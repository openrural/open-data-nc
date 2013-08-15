import random

from django.core.management.base import BaseCommand
from django.db import transaction

from opendata.catalog.tests.factories import ResourceFactory
from opendata.catalog.models import (City, County, Category, Resource,
                                     Department, Division)


class Command(BaseCommand):
    """Import city/county CSV file into database."""

    @transaction.commit_on_success
    def handle(self, n, **options):
        counties = list(County.objects.order_by('?')[:5])
        cities = list(City.objects.filter(counties__in=counties))
        categories = list(Category.objects.all())
        departments = Department.objects.all()
        Resource.objects.all().delete()

        for i in range(0, int(n)):
            department = random.choice(departments)
            r = ResourceFactory.create(department=department)
            rcities = random.sample(cities, 2)
            rcounties = random.sample(counties, 2)
            rcategories = random.sample(categories, 5)
            print r
            print rcities
            print rcounties
            print rcategories
            r.cities.add(*rcities)
            r.counties.add(*rcounties)
            r.categories.add(*rcategories)