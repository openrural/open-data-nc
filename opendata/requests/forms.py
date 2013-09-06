from django import forms
from selectable.forms import AutoCompleteSelectField
from selectable.forms import AutoCompleteSelectWidget

from opendata.catalog.lookups import CityLookup, CountyLookup
from .models import Request


class SearchForm(forms.Form):
    text = forms.CharField(required=False)


class RequestForm(forms.ModelForm):
    county = AutoCompleteSelectField(
        lookup_class=CountyLookup,
        required=False,
        widget=AutoCompleteSelectWidget(
            lookup_class=CountyLookup,
            attrs={"class": "suggestions-hidden suggestions-county"},
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
        model = Request
        exclude = ('suggested_by', 'resources', 'rating', 'status', )

    class Media:
        js = (
            "suggestions/js/form.js",
        )
