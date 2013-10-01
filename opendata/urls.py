from django.conf import settings
from django.conf.urls import patterns, include, url
from django.conf.urls.static import static
from django.contrib import admin
from django.views.generic.base import TemplateView

from opendata.users.views import UserRegistrationView

from opendata.views import Home

admin.autodiscover()


# Static pages
urlpatterns = patterns('',
    url(r'^$', Home.as_view(), name='home'),
    url(r'^about/$', TemplateView.as_view(
        template_name="pages/about.html"
        ), name='about'),
    url(r'^faq/$', TemplateView.as_view(
        template_name="pages/faq.html"
        ), name='faq'),
    url(r'^useful-links/$', TemplateView.as_view(
        template_name="pages/useful-links.html"
        ), name='useful-links'),
    url(r'^privacy/$', TemplateView.as_view(
        template_name="pages/privacy.html"
        ), name='privacy'),
    url(r'^terms-of-use/$', TemplateView.as_view(
        template_name="pages/terms.html"
        ), name='terms'),
)

# Installed apps
urlpatterns += patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^accounts/register/$', UserRegistrationView.as_view(
        success_url=settings.LOGIN_REDIRECT_URL,
        ), name='registration_register'),
    url(r'^accounts/', include('registration.backends.default.urls')),
    #url(r'^accounts/register/closed/$',
    #    TemplateView.as_view(template_name='registration/registration_closed.html'),
    #    name='registration_disallowed'),
    url(r'^catalog/', include("opendata.catalog.urls")),
    url(r'^comments/', include('django.contrib.comments.urls')),
    url(r'^selectable/', include('selectable.urls')),
    url(r'^scribbler/', include('scribbler.urls')),
    url(r'^request-data/', include('opendata.requests.urls')),
    url(r'^suggest-data/', include('opendata.suggestions.urls')),
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
