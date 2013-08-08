from django import forms
from django.conf import settings

from catalog.lookups import CityLookup, CountyLookup
from selectable.forms import AutoCompleteSelectField
from selectable.forms import AutoCompleteSelectWidget
from suggestions.models import Suggestion


class SearchForm(forms.Form):
    text = forms.CharField(required=False)


class SuggestionForm(forms.ModelForm):
    county = AutoCompleteSelectField(
        lookup_class=CountyLookup,
        required=False,
        widget=AutoCompleteSelectWidget(
            lookup_class=CountyLookup,
            attrs={"class": "suggestions-hidden suggestions-county suggestions-city"},
        )
    )
    city = AutoCompleteSelectField(
        lookup_class=CityLookup,
        required=False,
        widget=AutoCompleteSelectWidget(
            lookup_class=CityLookup,
            attrs={"class": "suggestions-hidden suggestions-city"},
        )
    )

    class Meta:
        model = Suggestion
        exclude = ('suggested_by', 'resources', 'rating')

    class Media:
        js = (
            "suggestions/js/form.js",
        )