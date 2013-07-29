import factory

from catalog.models import City, County, Resource


class UserFactory(factory.DjangoModelFactory):
    FACTORY_FOR = City

    name = factory.Sequence(lambda n: 'city%s' % n)


class County(factory.DjangoModelFactory):
    FACTORY_FOR = County

    name = factory.Sequence(lambda n: 'city%s' % n)


class Resource(factory.DjangoModelFactory):
    FACTORY_FOR = Resource

    name = factory.Sequence(lambda n: 'resource%s' % n)
