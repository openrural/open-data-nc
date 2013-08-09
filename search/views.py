import copy

from django.core.paginator import Paginator, InvalidPage
from django.http import Http404
from django.shortcuts import redirect, render_to_response
from haystack.query import SearchQuerySet
from haystack.views import FacetedSearchView, search_view_factory

from catalog.models import Resource
from suggestions.models import Suggestion
from .forms import FacetedSearchListingForm

MODEL_FACETS = {
    Resource: ('data_types', 'categories', 'cities', 'counties'),
    Suggestion: (),
}


class FacetedSearchCustomView(FacetedSearchView):
    """Overrides various default methods to allow for additional context, smoother
       UX for faceting
    """

    def build_page(self):
        """
        Paginates the results appropriately.

        Overriden to redirect to page 1 if a page_no is not found
        """
        try:
            page_no = int(self.request.GET.get('page', 1))
        except (TypeError, ValueError):
            raise Http404("Not a valid number for page.")

        if page_no < 1:
            raise Http404("Pages should be 1 or greater.")

        paginator = Paginator(self.results, self.results_per_page)
        # import pdb; pdb.set_trace()
        try:
            page = paginator.page(page_no)
        except InvalidPage:
            # Redirect to page 1 of the
            path = self.request.path
            qs = self.request.GET.copy()
            qs['page'] = 1
            url = '%s?%s' % (path, qs.urlencode())
            return redirect(url)

        return paginator, page

    def clean_filters(self):
        """Returns a list of tuples (filter, value) of applied facets"""
        filters = []
        # get distinct facets
        facets = list(set(self.form.selected_facets))
        for facet in facets:
            if ":" not in facet:
                continue
            field, value = facet.split(":", 1)
            field = field.replace('_', ' ').replace('exact', '').title()
            filters.append((field, value))
        return filters

    def create_response(self):
        """
        Generates the actual HttpResponse to send back to the user.

        Overriding to allow the redirect to pass through from overriden build_page
        """
        try:
            (paginator, page) = self.build_page()
        except ValueError:
            return self.build_page()

        context = {
            'query': self.query,
            'form': self.form,
            'page': page,
            'paginator': paginator,
            'suggestion': None,
        }

        if self.results and hasattr(self.results, 'query') and self.results.query.backend.include_spelling:
            context['suggestion'] = self.form.get_suggestion()

        context.update(self.extra_context())
        return render_to_response(self.template, context, context_instance=self.context_class(self.request))

    def extra_context(self):
        extra = super(FacetedSearchCustomView, self).extra_context()
        extra['filters'] = self.clean_filters()
        facets = extra.get('facets', {})
        extra['facets'] = self.remove_empty_facets(facets)
        model_type = self.request.path.split('/')[1]
        extra['model_type'] = model_type

        if model_type in ['package', 'project']:
            extra['model_create'] = '%s_create' % model_type
        return extra

    @staticmethod
    def remove_empty_facets(facets):
        """Return a dict of fields that have filters available."""
        fields = facets.get('fields', {}).keys()
        for field in fields:
            filters = facets['fields'].get(field)
            field_has_filters = any([facet[1] for facet in filters])
            if not field_has_filters:
                facets['fields'].pop(field)
        return facets


def search_listing(request, model, template_name='search/search.html'):
    # Extract the model type from the full path, which should be the plural name
    # of a valid model type (ex: '/users/')
    if model not in MODEL_FACETS.keys():
        raise Http404
    sqs = SearchQuerySet().models(model, )
    sqs = sqs.order_by('name')
    for facet in MODEL_FACETS[model]:
        sqs = sqs.facet(facet)
    view = search_view_factory(
        view_class=FacetedSearchCustomView,
        template=template_name,
        searchqueryset=sqs,
        form_class=FacetedSearchListingForm,
    )
    return view(request)
