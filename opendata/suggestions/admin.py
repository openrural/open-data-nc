from django.contrib import admin
from .models import Suggestion


class SuggestionAdmin(admin.ModelAdmin):
    pass


admin.site.register(Suggestion, SuggestionAdmin)