from django.contrib import admin
from .models import Request


class RequestAdmin(admin.ModelAdmin):
    readonly_fields = ('suggested_by', 'creation_date', 'last_modified', )
    list_display = ['title', 'status', ]
    list_filter = ['resources', ]

    def save_model(self, request, obj, form, change):
        if not obj.id:
            obj.suggested_by = request.user
        obj.save()

admin.site.register(Request, RequestAdmin)
