from registration.backends.default.views import RegistrationView

from opendata.users.forms import UserCreationForm


class UserRegistrationView(RegistrationView):
    form_class = UserCreationForm
