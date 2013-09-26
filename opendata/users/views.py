from django.core.exceptions import ImproperlyConfigured
from django.utils.encoding import force_text
from registration.backends.simple.views import RegistrationView

from opendata.users.forms import UserCreationForm


class UserRegistrationView(RegistrationView):
    form_class = UserCreationForm

    def get_success_url(self, request, user):
        """
        Returns the supplied success URL.
        """
        if self.success_url:
            # Forcing possible reverse_lazy evaluation
            url = force_text(self.success_url)
        else:
            raise ImproperlyConfigured(
                "No URL to redirect to. Provide a success_url.")
        return url
