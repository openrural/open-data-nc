import csv
import requests
import StringIO

from django.core.management.base import BaseCommand
from opendata.catalog.models import Department, Division


class Command(BaseCommand):
    """Import city/county CSV file into database."""

    def handle(self, file_location, **options):
        file_ = file(file_location, 'r')
        reader = csv.reader(file_, delimiter=',')
        for type, department, division in reader:
            # import pdb; pdb.set_trace()
            department, created = Department.objects.get_or_create(name=department, type=type.lower())
            if division:
                division, created = Division.objects.get_or_create(name=division)
                department.divisions.add(division)