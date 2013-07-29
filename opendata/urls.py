from django.conf import settings
from django.conf.urls import patterns, include, url
from django.conf.urls.static import static
from django.contrib import admin
from django.views.generic.base import TemplateView

from registration.backends.simple.views import RegistrationView

from opendata.views import Home

admin.autodiscover()


urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', Home.as_view(), name='home'),
    url(r'^catalog/', include("catalog.urls")),
    url(r'^selectable/', include('selectable.urls')),
    url(r'^request-data/', include('suggestions.urls')),
    url(r'^accounts/register/$', RegistrationView.as_view(),
        name='registration_register'),
    url(r'^accounts/register/closed/$',
        TemplateView.as_view(template_name='registration/registration_closed.html'),
        name='registration_disallowed'),
    (r'^accounts/', include('registration.auth_urls')),
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
