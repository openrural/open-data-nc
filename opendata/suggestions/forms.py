from django import forms


class SuggestUrlForm(forms.Form):
    url = forms.URLField()