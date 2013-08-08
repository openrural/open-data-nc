from django.db import models
from django.contrib.auth.models import User

from djangoratings.fields import RatingField
from catalog.models import Resource, City, County, Category


HELP = {
    'title': "What is this data set called by the agency that created it?",
    'description': "Using complete sentences, write a brief paragraph "
                   "describing the contents of the data set. What key "
                   "information and fields does it include?",
    'relevance': "Why is this data interesting and important?",
    'url': "What is the URL web address of the best version of this data "
           "set available today on a government website? If the data is not "
           "available on any government website, please type 'None'",
}


class Suggestion(models.Model):
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
    description = models.TextField(help_text=HELP['relevance'])
    relevance = models.TextField(help_text=HELP['description'])
    url = models.URLField(help_text=HELP['url'])
    agency_type = models.CharField(choices=AGENCY_TYPES,
                                   max_length=16)
    city = models.ForeignKey(City, related_name='suggestions', null=True,
                             blank=True)
    county = models.ForeignKey(County, related_name='suggestions', null=True,
                               blank=True)
    agency_name = models.CharField(max_length=255)
    agency_division = models.CharField(max_length=255)
    update_frequency = models.CharField(choices=FREQUENCY_TYPES,
                                       max_length=16)
    agency_contact = models.CharField(max_length=255, blank=True)
    categories = models.ManyToManyField(Category,
                                        related_name="suggestions",
                                        null=True, blank=True)
    resources = models.ManyToManyField(Resource,
                                       related_name="suggestions",
                                       null=True, blank=True)
    rating = RatingField(range=1, allow_delete=True, can_change_vote=True)

    def __unicode__(self):
        return self.title
