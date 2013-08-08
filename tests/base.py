from importlib import import_module
from urlparse import parse_qs, urlparse
from urllib import urlencode

from django.conf import settings
from django.contrib.auth import login
from django.core.urlresolvers import reverse, reverse_lazy
from django.http import HttpRequest
from django.test import TestCase

from .factories import UserFactory


class FormTestMixin(object):
    form_class = None  # Must be defined by the implementing class.

    def _get_form(self, *args, **kwargs):
        data = kwargs.pop('data', self._get_form_data())
        return self.form_class(data=data, *args, **kwargs)

    def _get_form_data(self, **kwargs):
        return kwargs


class ModelFormTestMixin(FormTestMixin):

    def _get_form(self, *args, **kwargs):
        if 'instance' not in kwargs:
            kwargs['instance'] = self._get_form_instance()
        return super(ModelFormTestMixin, self)._get_form(*args, **kwargs)

    def _get_form_instance(self):
        return None


class ViewTestMixin(object):
    """Utilities for more easily testing views."""
    url_name = ''  # Must be defined by implementing class.

    # These may be defined as either attributes or properties on the
    # implementing class.
    url_kwargs = {}
    url_args = {}
    get_kwargs = {}
    post_data = {}

    login_url = reverse_lazy('auth_login')

    def _url(self, url_name=None, url_args=None, url_kwargs=None,
            get_kwargs=None):
        """Builds a URL with reverse(), then adds GET parameters."""
        url_name = url_name or self.url_name
        url_args = self.url_args if url_args is None else url_args
        url_kwargs = self.url_kwargs if url_kwargs is None else url_kwargs
        get_kwargs = self.get_kwargs if get_kwargs is None else get_kwargs

        url = reverse(url_name, args=url_args, kwargs=url_kwargs)
        if get_kwargs:
            url = '{0}?{1}'.format(url, urlencode(get_kwargs, doseq=True))
        return url

    def _get(self, url_name=None, url_args=None, url_kwargs=None,
            get_kwargs=None, url=None, *args, **kwargs):
        """Convenience wrapper for self.client.get.

        If url is not passed, it is built using url_name, url_args, url_kwargs.
        Get parameters may be added from get_kwargs.
        """
        url = url or self._url(url_name, url_args, url_kwargs, get_kwargs)
        return self.client.get(path=url, *args, **kwargs)

    def _post(self, data=None, url_name=None, url_args=None,
            url_kwargs=None, get_kwargs=None, url=None, *args, **kwargs):
        """Convenience wrapper for self.client.post.

        If url is not passed, it is built using url_name, url_args, url_kwargs.
        Get parameters may be added from get_kwargs.
        """
        url = url or self._url(url_name, url_args, url_kwargs, get_kwargs)
        data = self.post_data if data is None else data
        return self.client.post(path=url, data=data, *args, **kwargs)

    def assertRedirectsNoFollow(self, response, url, use_params=True,
            status_code=302):
        """Checks response redirect without loading the destination page.

        Django's assertRedirects method loads the destination page, which
        requires that the page be renderable in the current test context
        (possibly requiring additional, unrelated setup).
        """
        self.assertEqual(response.status_code, status_code)
        response_url = response['location']
        parsed1 = urlparse(response_url)
        parsed2 = urlparse(url)
        self.assertEquals(parsed1.path, parsed2.path)
        if use_params:
            self.assertDictEqual(parse_qs(parsed1.query), parse_qs(parsed2.query))

    def assertRedirectsToLogin(self, response):
        return self.assertRedirectsNoFollow(response, self.login_url,
                use_params=False)


class WebsiteTestBase(TestCase):
    """Common utility methods that may be useful for all Website tests."""

    def login_user(self, user):
        """Log in a user without need for a password.

        Adapted from
        http://jameswestby.net/weblog/tech/17-directly-logging-in-a-user-in-django-tests.html
        """
        user.backend = "django.contrib.auth.backends.ModelBackend"
        engine = import_module(settings.SESSION_ENGINE)

        # Create a fake request to store login details.
        request = HttpRequest()
        if self.client.session:
            request.session = self.client.session
        else:
            request.session = engine.SessionStore()
        login(request, user)

        # Set the cookie to represent the session.
        session_cookie = settings.SESSION_COOKIE_NAME
        self.client.cookies[session_cookie] = request.session.session_key
        cookie_data = {
            'max-age': None,
            'path': '/',
            'domain': settings.SESSION_COOKIE_DOMAIN,
            'secure': settings.SESSION_COOKIE_SECURE or None,
            'expires': None,
        }
        self.client.cookies[session_cookie].update(cookie_data)

        # Save the session values.
        request.session.save()


class BasicGetTest(ViewTestMixin, WebsiteTestBase):
    """Simple view that tests that a given view returns a 200 for authenticated
    users and unauthenticated users"""
    url_name = ''
    template_name = ''

    def tearDown(self):
        self.client.logout()

    def test_get_authenticated(self):
        """Logged in users can view the home page"""
        self.login_user(UserFactory.create())
        response = self._get()
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, self.template_name)

    def test_get_unauthenticated(self):
        """Unregistered users can view the home page"""
        response = self._get()
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, self.template_name)
