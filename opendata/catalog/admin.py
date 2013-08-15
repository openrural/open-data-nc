import datetime
from django.contrib import admin

from .models import *
from .forms import ResourceAdminForm


class UrlImageInline(admin.TabularInline):
    model = UrlImage
    extra = 1


class UrlInline(admin.TabularInline):
    model = Url
    extra = 1
    verbose_name = 'Resource Url'
    verbose_name_plural = 'Resource Urls'


class ResourceAdmin(admin.ModelAdmin):
    raw_id_fields = ('department', 'division', )
    readonly_fields = ['created_by', 'created', 'last_updated_by', 'last_updated']
    inlines = [UrlInline, UrlImageInline]
    verbose_name = 'Resource Url'
    verbose_name_plural = 'Resource Urls'
    list_display = ('name', 'department', 'release_date', 'is_published')
    search_fields = ['name', 'description', 'department__name']
    list_filter = ['categories', 'agency_type', 'data_types', 'updates']
    date_hierarchy = 'release_date'
    filter_horizontal = ('data_types', 'categories', 'cities', 'counties')
    form = ResourceAdminForm

    fieldsets = [
        ('Basic Information', {'fields': [('name', 'is_published',), 'short_description',
                                  'keywords', 'description', 'release_date',
                                  'updates', 'time_period', ]}),
        ('Geographies and Types', {'fields': ['agency_type', 'counties',
                        'cities', 'categories', 'data_types', ]}),
        ('Agency Information', {'fields': ['department', 'division', 'contact_phone',
                               'contact_email', 'contact_url', ]}),
        ('Data set information', {'fields': [
            'proj_coord_sys', 'coord_sys', 'wkt_geometry', 'metadata_contact',
            'metadata_notes', 'created_by', 'created', 'last_updated_by',
            'last_updated',
        ], 'classes': ['collapse', ]}),
    ]

    def save_model(self, request, obj, form, change):
        if not change:
            obj.created_by = request.user
            obj.created = datetime.datetime.now()

        obj.last_updated_by = request.user
        obj.save()

    class Media:
        css = {
            all: ("css/admin.css", )
        }
        js = (
            "js/admin.js",
        )


class UrlImageAdmin(admin.ModelAdmin):
    list_display = ('title', 'image')
    search_fields = ['image', 'title', 'description']


class UrlAdmin(admin.ModelAdmin):
    list_display = ('url_label', 'url_type', 'url')
    inlines = [UrlImageInline, ]
    list_filter = ['url_type', ]


class CoordSystemAdmin(admin.ModelAdmin):
    list_display = ('EPSG_code', 'name')
    search_fields = ['name', 'EPSG_code', 'description']

    verbose_name = 'Resource Url'
    verbose_name_plural = 'Resource Urls'


class CategoryAdmin(admin.ModelAdmin):
    ordering = ('name',)


class CityAdmin(admin.ModelAdmin):
    ordering = ('name',)


class CountyAdmin(admin.ModelAdmin):
    ordering = ('name',)
    filter_horizontal = ('cities',)


class DepartmentAdmin(admin.ModelAdmin):
    search_fields = ['name', ]
    list_display = ['name', 'type']
    list_filter = ['type', ]


class DivisionAdmin(admin.ModelAdmin):
    search_fields = ['name', ]


admin.site.register(Department, DepartmentAdmin)
admin.site.register(Division, DivisionAdmin)
admin.site.register(Category, CategoryAdmin)
admin.site.register(UpdateFrequency)
admin.site.register(UrlType)
admin.site.register(CoordSystem, CoordSystemAdmin)
admin.site.register(DataType)
admin.site.register(Url, UrlAdmin)
admin.site.register(UrlImage, UrlImageAdmin)
admin.site.register(Resource, ResourceAdmin)
admin.site.register(City, CityAdmin)
admin.site.register(County, CountyAdmin)
