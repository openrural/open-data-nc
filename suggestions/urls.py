from django.conf.urls import patterns, url
from suggestions import views


urlpatterns = patterns('',
   url(r'^$', views.list_suggestions, name="suggestion-list"),
   url(r'^create/$', views.add_suggestion, name="suggestion-create"),
   url(r'^(?P<suggestion_id>\d+)/vote/$', views.vote,
       name="suggestion-vote"),
   url(r'^(?P<suggestion_id>\d+)/unvote/$', views.remove_vote,
       name="suggestion-remove-vote"),
)
