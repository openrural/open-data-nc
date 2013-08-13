from selectable.base import ModelLookup
from selectable.registry import registry
from .models import City, County


class CityLookup(ModelLookup):
    model = City
    search_fields = ('name__icontains', )


class CountyLookup(ModelLookup):
    model = County
    search_fields = ('name__icontains', )


registry.register(CityLookup)
registry.register(CountyLookup)

