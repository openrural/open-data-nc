from django import forms
from django.conf import settings

from catalog.models import City, County
from suggestions.models import Suggestion


class SearchForm(forms.Form):
    text = forms.CharField(required=False)


class SuggestionForm(forms.ModelForm):

    city = forms.ModelChoiceField(required=False, queryset=City.objects.all(),
                                  widget=forms.Select(attrs={"class": "suggestions-hidden "
                                                            "suggestions-city"}))
    county = forms.ModelChoiceField(required=False, queryset=County.objects.all(),
                                  widget=forms.Select(attrs={"class": "suggestions-hidden "
                                                        "suggestions-county "
                                                        "suggestions-city"}))

    class Meta:
        model = Suggestion
        exclude = ('suggested_by', 'resources', 'rating')

    class Media:
        js = (
            "suggestions/js/form.js",
        )