from django.contrib.auth.models import User
from django.utils import timezone
import factory

from catalog.models import City, County, Resource


class UserFactory(factory.DjangoModelFactory):
    FACTORY_FOR = User

    username = factory.Sequence(lambda n: 'user%s' % n)
    email = factory.LazyAttribute(lambda obj: '%s@example.com' % obj.username)


class CityFactory(factory.DjangoModelFactory):
    FACTORY_FOR = City

    name = factory.Sequence(lambda n: 'city%s' % n)


class CountyFactory(factory.DjangoModelFactory):
    FACTORY_FOR = County

    name = factory.Sequence(lambda n: 'city%s' % n)


class ResourceFactory(factory.DjangoModelFactory):
    FACTORY_FOR = Resource

    name = factory.Sequence(lambda n: 'resource%s' % n)
    created_by = factory.SubFactory(UserFactory)
    last_updated_by = factory.LazyAttribute(lambda obj: obj.created_by)
    created = timezone.now()
