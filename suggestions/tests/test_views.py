from django.core.urlresolvers import reverse
from django.test import TestCase

from .factories import SuggestionFactory
from ..models import Suggestion
from tests.base import ViewTestMixin, WebsiteTestBase
from tests.factories import UserFactory

__all__ = ['ListSuggestionViewTest', 'AddSuggestionViewTest']


class ListSuggestionViewTest(TestCase):
    """Tests for the list_suggestions view"""

    def setUp(self):
        self.url = reverse("suggestion-list")
        self.suggestion1 = SuggestionFactory.create(title="suggestion")
        self.suggestion2 = SuggestionFactory.create(title="data request")

    def test_get_list_page(self):
        """Tests that landing on suggestions page shows all avaiable
        suggestions."""
        response = self.client.get(self.url)
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.context['suggestions'].count(), 2)

    def test_get_search_terms(self):
        response = self.client.get(self.url, data={"text": "suggestion"})
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.context['suggestions'].count(), 1)

    def test_post(self):
        """Tests that accessing the page with a post request returns a list of
        all suggestions and the search form has no data binded"""
        response = self.client.post(self.url, data={"text": "suggestion"})
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.context['suggestions'].count(), 2)


class AddSuggestionViewTest(ViewTestMixin, WebsiteTestBase):
    """Test for add_suggestion view. Only authenticated users should be able to
    add suggestions."""

    template_name = "suggestions/create_edit.html"

    def setUp(self):
        self.url = reverse("suggestion-create")

    def tearDown(self):
        self.client.logout()

    def get_valid_data(self):
        data = {
            'description': "This is a valid suggestion.",
            'title': "Crime stats",
            'url': "http://www.example.com",
            'agency_type': "city",
            'agency_name': "Chapel Hill Police Department",
            'update_frequency': "daily",
            'relevance': "This is very relevant to me because",
            'agency_division': "I don't know"
        }
        return data

    def test_get_unauthenticated(self):
        """Only registered users can view the add suggestion page."""
        response = self._get(url=self.url)
        self.assertRedirectsToLogin(response)

    def test_get_authenticated(self):
        """Authenticated users can view add suggestion page."""
        self.login_user(UserFactory.create())
        response = self._get(url=self.url)
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, self.template_name)
        self.failUnless('form' in response.context)

    def test_post_authenticated(self):
        """Authenticated users can add suggestions."""
        data = self.get_valid_data()
        self.login_user(UserFactory.create())
        response = self._post(url=self.url, data=data)
        # import pdb; pdb.set_trace()
        self.assertEquals(response.status_code, 302)
        suggestions = Suggestion.objects.all()
        self.assertEqual(1, suggestions.count())



