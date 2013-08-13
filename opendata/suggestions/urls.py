from django.conf.urls import patterns, url
from .views import SuggestPageView, SuggestCreateView


urlpatterns = patterns('',
   url(r'^$', SuggestPageView.as_view(), name="suggest-page"),
   url(r'^create/$', SuggestCreateView.as_view(), name="suggest-create"),
)