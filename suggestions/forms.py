from django import forms
from suggestions.models import Suggestion


class SearchForm(forms.Form):
    text = forms.CharField(required=False)


class SuggestionForm(forms.ModelForm):

    class Meta(object):
        model = Suggestion
        exclude = ('suggested_by', 'resources', 'rating')
