from django import template

from opendata.catalog.models import Resource

register = template.Library()


@register.assignment_tag
def get_latest(num):
    num = int(num)
    resources = Resource.objects.order_by("last_updated")
    resources_count = resources.count()
    if resources_count >= num:
        return resources[0:num + 1]
    return resources