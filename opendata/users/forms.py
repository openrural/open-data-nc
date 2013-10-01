from django import forms
from django.contrib.auth import forms as auth
from django.contrib.auth.models import User

from captcha.fields import ReCaptchaField


class UserCreationForm(auth.UserCreationForm):
    """Modified form that uses our custom User model."""

    first_name = forms.CharField(max_length=30)
    last_name = forms.CharField(max_length=30)
    verification = ReCaptchaField(required=True, label="")

    class Meta:
        model = User
        fields = ("first_name", "last_name", "username", "email", "password1",
            "password2", "verification")
