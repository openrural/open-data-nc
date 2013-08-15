from django.core.urlresolvers import reverse

from .factories import ResourceFactory, DepartmentFactory
from ..models import Resource
from opendata.tests.base import ViewTestMixin, WebsiteTestBase, BasicGetTest
from opendata.tests.factories import UserFactory

__all__ = ["ResourceCreateTest", "ResourceDetailTest", "ResourceSearchView"]


class ResourceCreateTest(ViewTestMixin, WebsiteTestBase):
    url_name = "resource_create"
    template_name = "catalog/resource_form.html"

    def setUp(self):
        self.user = UserFactory.create()
        self.data = self.get_valid_data()
        self.url = reverse(self.url_name)

    def get_valid_data(self):
        data = ResourceFactory.attributes()
        data.update({
            "created": "2013-02-01",
            "last_updated_by": self.user.id,
            "created_by": self.user.id,
            "csw_typename": "csw:Record",
            "short_description": "resource",
            "department": DepartmentFactory.create().id,
            'agency_type': 'state',
            "slug": "this-field-required",
            "csw_schema": "http://www.opengis.net/cat/csw/2.0.2",
            "csw_mdsource": "local",
            "usage": "will be used like this",
            "description": "Resource's description",

        })
        return data

    def test_get_unathenticated(self):
        """Only registered users can view the add suggestion page."""
        response = self._get(url=self.url)
        self.assertRedirectsToLogin(response)

    def test_get_authenticated(self):
        """Authenticated users can view add resource page."""
        self.login_user(UserFactory.create())
        response = self._get(url=self.url)
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, self.template_name)
        self.failUnless('form' in response.context)

    def test_post_authenticated(self):
        self.login_user(UserFactory.create())
        response = self._post(url=self.url, data=self.data)
        # import pdb; pdb.set_trace()
        self.assertEquals(response.status_code, 302)
        suggestions = Resource.objects.all()
        self.assertEqual(1, suggestions.count())


class ResourceDetailTest(ViewTestMixin, WebsiteTestBase):

    template_name = "catalog/resource_detail.html"

    def setUp(self):
        self.resource = ResourceFactory.create()
        self.url = reverse(
            "catalog_resource_detail",
            kwargs={"slug": self.resource, "pk": self.resource.id}
        )

    def test_get_unauthenticated(self):
        """Authenticated users can view resources."""
        response = self._get(url=self.url)
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, self.template_name)


class ResourceSearchView(BasicGetTest):
    template_name = "search/search.html"
    url_name = "catalog_search"
