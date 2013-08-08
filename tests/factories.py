import factory

from django.contrib.auth.models import User

__all__ = ['UserFactory']


class UserFactory(factory.DjangoModelFactory):
    FACTORY_FOR = User

    username = factory.Sequence(lambda n: 'user%s' % n)
    email = factory.LazyAttribute(lambda obj: '%s@example.com' % obj.username)