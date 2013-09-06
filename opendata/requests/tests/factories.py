import factory

from django.contrib.auth.models import User

from ..models import Request


class UserFactory(factory.DjangoModelFactory):
    FACTORY_FOR = User

    username = factory.Sequence(lambda n: 'user%s' % n)
    password = factory.PostGenerationMethodCall('set_password', 'password')


class RequestFactory(factory.DjangoModelFactory):
    FACTORY_FOR = Request

    status = Request.APPROVED
    suggested_by = factory.SubFactory(UserFactory)
    title = factory.Sequence(lambda n: 'suggestion%s' % n)
