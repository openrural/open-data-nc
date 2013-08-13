from django.db import models
from django.contrib.auth.models import User

from djangoratings.fields import RatingField
from opendata.catalog.models import Resource, City, County, Category


HELP = {
    'title': 'What is this data set called by the agency that created it?',
    'short_description': 'If this data set were a photo, what would it be its caption',
    'relevance': 'Why is this data interesting and important?',
    'description': 'Using complete sentences, write a brief paragraph '
                   'describing the contents of the data set. What key '
                   'information and fields does it include?',
    'agency_name': 'Examples: Raleigh Police Department; Chapel Hill-Carrboro '
                   'City Schools; N.C. Department of Health and Human Services',
    'agency_division': 'Examples: Division of Water Quality; Tax Collector, '
                       'Registrar of Deeds',
    'agency_type': '',
    'county': '',
    'url': '',
    'city': 'Which city or town',
    'last_updated': 'NOTE: some data sets may have multiple versions on a '
                    'CD-ROM and a version on the agency\'s web server. Or an '
                    'internal version and a different version that is publicly '
                    'available on a website. We\'re just looking for the date '
                    'of the most recent record in the particular version that '
                    'you\'re describing.',
    'update_frequency': '',
    'keywords': 'Example: sidewalks, inspections, traffic tickets',
    'other': 'Only needed if none of the categories above was selected.'

}
FIELDS = {
    'url': 'What is the URL web address of the best version of this data set '
           'available on any government website? If the data is not available '
           'on any government websites, please type "None',
    'relevance': 'Why is this data interesting and important?',
    'data_format': 'In what format if this data?',
    'agency_name': 'What is the name of the agency that created the record?',
    'agency_division': 'What is the name of the division or department that '
                       'created the record?',
    'agency_type': 'Is this a statewide data set created by the N.C state '
                   'government? Or was it created by a county government? '
                   'Or a city or town government?',
    'county': 'Which county',
    'city': 'Which city or town',
    'last_updated': 'What (if any) is the date of the most recent record in '
                    'this particular version of the data set? (mm/dd/yyy)',
    'update_frequency': 'How often has this version of the data set been '
                        'updated in the last 12 months?',
    'categories': 'Pick one or more categories for this data set.',
    'keywords': 'Type any other keyword that you\'d use to describe the data. '
                'Use commas to separate each key word or phrase.',

}


class Request(models.Model):
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
    suggested_by = models.ForeignKey(User, related_name="suggested_by")
    title = models.CharField(max_length=255, help_text=HELP['title'])
    description = models.TextField(help_text=HELP['description'])
    relevance = models.TextField(help_text=HELP['relevance'])
    url = models.URLField(verbose_name=FIELDS['url'])
    agency_type = models.CharField(verbose_name=FIELDS['agency_type'],
                                  choices=AGENCY_TYPES, max_length=16)
    city = models.ForeignKey(City, related_name='requests', null=True,
                             blank=True)
    county = models.ForeignKey(County, related_name='requests', null=True,
                               blank=True)
    agency_name = models.CharField(max_length=255)
    agency_division = models.CharField(max_length=255)
    update_frequency = models.CharField(choices=FREQUENCY_TYPES,
                                       max_length=16)
    agency_contact = models.CharField(max_length=255, blank=True)
    categories = models.ManyToManyField(Category,
                                        related_name="requests",
                                        null=True, blank=True)
    other_category = models.CharField(u'Other category', max_length=255, blank=True,
                                      help_text=HELP['other'])
    resources = models.ManyToManyField(Resource,
                                       related_name="requests",
                                       null=True, blank=True)
    rating = RatingField(range=1, allow_delete=True, can_change_vote=True)

    def __unicode__(self):
        return self.title
