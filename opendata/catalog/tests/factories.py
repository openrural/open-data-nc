from django.utils import timezone
import factory

from ..models import City, County, Department, Resource
from opendata.tests.factories import UserFactory


class CityFactory(factory.DjangoModelFactory):
    FACTORY_FOR = City

    name = factory.Sequence(lambda n: 'city%s' % n)


class CountyFactory(factory.DjangoModelFactory):
    FACTORY_FOR = County

    name = factory.Sequence(lambda n: 'city%s' % n)


class DepartmentFactory(factory.DjangoModelFactory):
    FACTORY_FOR = Department

    name = "Departement"
    type = 'state'


class ResourceFactory(factory.DjangoModelFactory):
    FACTORY_FOR = Resource

    name = factory.Sequence(lambda n: 'resource%s' % n)
    created_by = factory.SubFactory(UserFactory)
    last_updated_by = factory.LazyAttribute(lambda obj: obj.created_by)
    created = timezone.now()
    description = "Long description"
    short_description = "Short description"
    usage = "Usage"
    department = factory.SubFactory(DepartmentFactory)
