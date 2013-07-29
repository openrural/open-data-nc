import factory

from django.contrib.auth.models import User

from suggestions.models import Suggestion


class UserFactory(factory.DjangoModelFactory):
    FACTORY_FOR = User

    username = factory.Sequence(lambda n: 'user%s' % n)
    password = factory.PostGenerationMethodCall('set_password', 'password')

class SuggestionFactory(factory.DjangoModelFactory):
    FACTORY_FOR = Suggestion

    suggested_by = factory.SubFactory(UserFactory)
    title = factory.Sequence(lambda n: 'suggestion%s' % n)
