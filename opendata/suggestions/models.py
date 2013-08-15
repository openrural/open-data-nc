from django.db import models

from opendata.requests.models import Category, City, County
from opendata.fields_info import FIELDS, HELP


class Suggestion(models.Model):
    FORMATS = (
        ('xls', 'XLS'),
        ('csv', 'CSV'),
        ('rss', 'RSS'),
        ('json', 'JSON'),
        ('accb', '.accb or .mdb Microsoft Access file'),
        ('pdf', 'PDF'),
        ('doc', 'Word Document'),
        ('oracle', 'Oracle Database'),
        ('txt', '.txt'),
        ('shp', '.shp'),
        ('web', 'Web page [HTML, ASP, etc]'),
    )
    AGENCY_TYPES = (
        ('state', 'Statewide'),
        ('county', 'County Agency'),
        ('city', 'City/town Agency'),
    )
    FREQUENCY_TYPES = (
        ('daily', 'At least once a day'),
        ('weekly', 'At least once a week'),
        ('monthly', 'At least once a month'),
        ('yearly', 'At least once a year'),
        ('never', "It is not updated after it's created."),
    )

    date = models.DateTimeField(auto_now_add=True)
    date_last_modified = models.DateTimeField(auto_now=True)
    title = models.CharField(max_length=255, help_text=HELP['title'])
    short_description = models.CharField(u'Brief description', max_length=255,
                                         help_text=HELP['short_description'])
    description = models.TextField(u'Long description', help_text=HELP['description'])
    url = models.CharField(verbose_name=FIELDS['url'], max_length=255,
                           help_text=HELP['url'])
    data_format = models.CharField(verbose_name=FIELDS['data_format'],
                                   max_length=100, choices=FORMATS)
    other_format = models.CharField(max_length=255, blank=True)
    agency_name = models.CharField(verbose_name=FIELDS['agency_name'],
                                   help_text=HELP['agency_name'], max_length=255)
    agency_division = models.CharField(max_length=255,
                                       verbose_name=FIELDS['agency_division'],
                                       help_text=HELP['agency_name'])
    agency_type = models.CharField(choices=AGENCY_TYPES, max_length=16,
                                   verbose_name=FIELDS['agency_type'],
                                   help_text=HELP['agency_type'])
    city = models.ForeignKey(City, verbose_name=FIELDS['city'], blank=True,
                             related_name='suggestions', null=True,)
    county = models.ForeignKey(County, related_name='suggestions', null=True,
                               blank=True, verbose_name=FIELDS['county'])
    last_updated = models.DateField(verbose_name=FIELDS['last_updated'],
                                    blank=True, null=True)
    update_frequency = models.CharField(choices=FREQUENCY_TYPES, max_length=16,
                                        verbose_name=FIELDS['update_frequency'],
                                        help_text=HELP['update_frequency'])
    categories = models.ManyToManyField(Category, related_name="suggestions",
                                        null=True, blank=True,
                                        verbose_name=FIELDS['categories'])
    other_category = models.CharField(u'Other category', max_length=255, blank=True,
                                      help_text=HELP['other'])
    keywords = models.CommaSeparatedIntegerField(max_length=255, blank=True,
                                                 verbose_name=FIELDS['keywords'],
                                                 help_text=HELP['keywords'])
    contact_name = models.CharField(max_length=255)
    phone_number = models.CharField(max_length=30)
    street_address = models.CharField(max_length=100)
    contact_city = models.CharField(u'City', max_length=50)
    zipcode = models.CharField(u'Zip Code', max_length=30)
    email_address = models.CharField(max_length=100)

    def __unicode__(self):
        return self.title