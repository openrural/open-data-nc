from django.conf.urls import patterns, url

from opendata.search.views import search_listing
from .models import Resource
from .views import ResourceDetail, ResourceCreate


urlpatterns = patterns('',
    url(r'^$', search_listing, {'model': Resource}, name='catalog_search'),
    url(r'^create/$', ResourceCreate.as_view(), name='resource_create'),
    url(r'^(?P<slug>[-\w]+)/(?P<pk>[\d]+)/$', ResourceDetail.as_view(),
        name='catalog_resource_detail')
)
