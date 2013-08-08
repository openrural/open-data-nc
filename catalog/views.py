from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.views.generic import (CreateView, DeleteView, DetailView, ListView,
                                  UpdateView, RedirectView)
from django.views.generic.detail import SingleObjectMixin
from haystack.views import FacetedSearchView
from catalog.models import Resource


class LoginRequiredMixin(object):

    @method_decorator(login_required)
    def dispatch(self, *args, **kwargs):
        return super(LoginRequiredMixin, self).dispatch(*args, **kwargs)


class ResourceCreate(LoginRequiredMixin, CreateView):
    model = Resource
    # form_class = ProjectCreateEditForm


class ResearchSearchView(FacetedSearchView):

    def build_form(self, form_kwargs=None):
        """
        Override so we can make empty searches work (listing view)
        """
        data = {}  # initialize to dict so empty searches work
        if form_kwargs is None:
            form_kwargs = {}

        # This way the form can always receive a list containing zero or more
        # facet expressions:
        form_kwargs['selected_facets'] = self.request.GET.getlist("selected_facets")

        kwargs = {
            'load_all': self.load_all,
        }
        if form_kwargs:
            kwargs.update(form_kwargs)

        if len(self.request.GET):
            data = self.request.GET

        if self.searchqueryset is not None:
            kwargs['searchqueryset'] = self.searchqueryset

        return self.form_class(data, **kwargs)


class ResourceDetail(DetailView):
    model = Resource

    def get_context_data(self, **kwargs):
        context = super(ResourceDetail, self).get_context_data(**kwargs)
        site_url = getattr(settings, 'SITE_URL', 'http://localhost')
        context.update({'site_url': site_url})
        return context