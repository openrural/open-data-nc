import factory

from django.test import TestCase
from django.core.urlresolvers import reverse

from suggestions.tests.factories import UserFactory, SuggestionFactory


class MyTest(TestCase):

    def test_list(self):
        "Listing view should render and include created suggestions"
        suggestion = SuggestionFactory.create()
        response = self.client.get(reverse('suggestion-list'))
        self.assertEqual(response.status_code, 200)
        self.assertTrue('suggestions' in response.context)
        self.assertTrue(suggestion in response.context['suggestions'])

    def test_vote_login(self):
        "Login is required to access the vote view"
        sugg = SuggestionFactory.create()
        response = self.client.post(reverse('suggestion-vote', args=[sugg.pk]),
                                    follow=True)
        self.assertTrue(reverse('auth_login') in response.redirect_chain[0][0])

    def test_vote_get(self):
        "HTTP GET is not allowed"
        user = UserFactory.create()
        sugg = SuggestionFactory.create()
        self.client.login(username=user.username, password='password')
        response = self.client.get(reverse('suggestion-vote', args=[sugg.pk]))
        self.assertEqual(response.status_code, 405)

    def test_vote_post_bad_id(self):
        "Invalid suggestion ID should raise 404"
        user = UserFactory.create()
        self.client.login(username=user.username, password='password')
        response = self.client.post(reverse('suggestion-vote', args=[1000]))
        self.assertEqual(response.status_code, 404)

    def test_vote_post(self):
        "Successful POST should vote and redirect"
        user = UserFactory.create()
        sugg = SuggestionFactory.create()
        self.client.login(username=user.username, password='password')
        response = self.client.post(reverse('suggestion-vote', args=[sugg.pk]))
        self.assertEqual(response.status_code, 302)
        self.assertEqual(sugg.rating.get_rating_for_user(user), 1)

    def test_remove_vote_login(self):
        "Login is required to access the remove vote view"
        sugg = SuggestionFactory.create()
        response = self.client.post(reverse('suggestion-remove-vote',
                                    args=[sugg.pk]), follow=True)
        self.assertTrue(reverse('auth_login') in response.redirect_chain[0][0])

    def test_remove_vote_get(self):
        "HTTP GET is not allowed"
        user = UserFactory.create()
        sugg = SuggestionFactory.create()
        self.client.login(username=user.username, password='password')
        response = self.client.get(reverse('suggestion-remove-vote',
                                   args=[sugg.pk]))
        self.assertEqual(response.status_code, 405)

    def test_remove_vote_post_bad_id(self):
        "Invalid suggestion ID should raise 404"
        user = UserFactory.create()
        self.client.login(username=user.username, password='password')
        response = self.client.post(reverse('suggestion-remove-vote',
                                    args=[10000]))
        self.assertEqual(response.status_code, 404)

    def test_remove_vote_post(self):
        "Successful POST should remove vote and redirect"
        user = UserFactory.create()
        sugg = SuggestionFactory.create()
        sugg.rating.add(score=1, user=user, ip_address='127.0.0.1')
        self.client.login(username=user.username, password='password')
        response = self.client.post(reverse('suggestion-remove-vote',
                                            args=[sugg.pk]))
        self.assertEqual(response.status_code, 302)
        self.assertEqual(sugg.rating.get_rating_for_user(user), None)

    def test_remove_invalid_vote(self):
        "Removing non-existing vote shouldn't raise an error"
        user = UserFactory.create()
        sugg = SuggestionFactory.create()
        self.client.login(username=user.username, password='password')
        response = self.client.post(reverse('suggestion-remove-vote',
                                            args=[sugg.pk]))
        self.assertEqual(response.status_code, 302)
        self.assertEqual(sugg.rating.get_rating_for_user(user), None)

