from django.core.exceptions import ImproperlyConfigured
from django.utils.encoding import force_text
from django.views.generic import TemplateView
from registration.backends.simple.views import RegistrationView


class Home(TemplateView):
    template_name = 'home.html'

    def get_context_data(self, **kwargs):
        context = super(Home, self).get_context_data(**kwargs)
        return context


class UserRegistrationView(RegistrationView):
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