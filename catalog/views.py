import math

from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.views.generic import (CreateView, DeleteView, DetailView, ListView,
                                  UpdateView, RedirectView)
from django.views.generic.detail import SingleObjectMixin
from catalog.models import Resource


class LoginRequiredMixin(object):

    @method_decorator(login_required)
    def dispatch(self, *args, **kwargs):
        return super(LoginRequiredMixin, self).dispatch(*args, **kwargs)


class ResourceCreate(LoginRequiredMixin, CreateView):
    model = Resource
    # form_class = ProjectCreateEditForm


class ResourceDetail(DetailView):
    model = Resource

    def get_context_data(self, **kwargs):
        context = super(ResourceDetail, self).get_context_data(**kwargs)
        resource = context['object']
        # import pdb; pdb.set_trace()
        average_rating = math.floor(resource.rating.get_rating())
        site_url = getattr(settings, 'SITE_URL', 'http://localhost')
        context.update({'site_url': site_url, 'average_rating': average_rating})
        return context