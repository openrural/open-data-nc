from django.contrib import admin
from .models import Request


class RequestAdmin(admin.ModelAdmin):
    readonly_fields = ('resources', )


admin.site.register(Request, RequestAdmin)
