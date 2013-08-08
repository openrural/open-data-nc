from django.core.management.base import BaseCommand

from catalog.tests.factories import ResourceFactory


class Command(BaseCommand):
    """Import city/county CSV file into database."""

    def handle(self, n, **options):
        for i in range(0, int(n)):
            ResourceFactory.create()