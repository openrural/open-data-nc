from django.contrib import admin
from suggestions.models import Suggestion


class SuggestionAdmin(admin.ModelAdmin):
    pass


admin.site.register(Suggestion, SuggestionAdmin)
