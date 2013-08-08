from django.contrib import admin
from suggestions.models import Suggestion


class SuggestionAdmin(admin.ModelAdmin):
    readonly_fields = ('resources', )


admin.site.register(Suggestion, SuggestionAdmin)
