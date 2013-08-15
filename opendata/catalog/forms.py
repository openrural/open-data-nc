from django import forms

from .models import Resource, Department, Division, UpdateFrequency
from opendata.fields_info import FIELDS


class ResourceAdminForm(forms.ModelForm):
    division = forms.ModelChoiceField(label=FIELDS['agency_division'],
                                      queryset=Division.objects, required=False)
    department = forms.ModelChoiceField(label=FIELDS['agency_name'],
                                        queryset=Department.objects)
    agency_type = forms.ChoiceField(choices=Resource.AGENCY_TYPES,
                                    label=FIELDS['agency_type'])
    release_date = forms.DateField(label=FIELDS['last_updated'], required=False)
    updates = forms.ModelChoiceField(label=FIELDS['update_frequency'],
                                    queryset=UpdateFrequency.objects,
                                    required=False)

    class Meta:
        model = Resource