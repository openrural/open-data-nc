import math
import os
# from lxml import etree
# from shapely.wkt import loads

from operator import attrgetter
from django.db import models
from django.conf import settings
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.template.defaultfilters import slugify
from djangoratings.fields import RatingField

from opendata.fields_info import FIELDS, HELP
from .managers import ImageManager


class City(models.Model):
    name = models.CharField(max_length=50)

    class Meta(object):
        verbose_name_plural = 'Cities'

    def __unicode__(self):
        return self.name


class County(models.Model):
    name = models.CharField(max_length=50)
    cities = models.ManyToManyField(City, related_name='counties')

    class Meta(object):
        verbose_name_plural = 'Counties'

    def __unicode__(self):
        return self.name


class Category(models.Model):
    name = models.CharField(max_length=150)

    class Meta(object):
        verbose_name_plural = 'Categories'

    def __unicode__(self):
        return self.name


class Division(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        ordering = ('name', )

    def __unicode__(self):
        return self.name


class Department(models.Model):
    TYPES = (('state', 'State'), ('county', 'County'), ('city', 'City'))
    name = models.CharField(max_length=255)
    type = models.CharField(max_length=40, choices=TYPES, default='state')
    divisions = models.ManyToManyField(Division, blank=True, null=True)

    def __unicode__(self):
        return self.name

    class Meta:
        ordering = ('name', )


class DataType(models.Model):
    name = models.CharField(max_length=50)

    def __unicode__(self):
        return self.name


class UrlType(models.Model):
    url_type = models.CharField(max_length=50)
    
    def __unicode__(self):
        return '%s' % self.url_type
    
    class Meta: 
        ordering = ['url_type']


class UpdateFrequency(models.Model):
    update_frequency = models.CharField(max_length=50)
    
    def __unicode__(self):
        return '%s' % self.update_frequency
    
    class Meta: 
        ordering = ['update_frequency']


class CoordSystem(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    EPSG_code = models.IntegerField(blank=True, help_text="Official EPSG code, numbers only")
    
    def __unicode__(self):
        return '%s, %s' % (self.EPSG_code, self.name)
        
    class Meta: 
        ordering = ['EPSG_code']
        verbose_name = 'Coordinate system'


class Resource(models.Model):

    AGENCY_TYPES = (
        ('state', 'Statewide'),
        ('county', 'County Agency'),
        ('city', 'City/town Agency'),
    )

    # def save(self, *args, **kwargs):
    #     if not self.pk:
    #         super(Resource, self).save(*args, **kwargs)

    #     self.csw_xml = self.gen_csw_xml()
    #     self.csw_anytext = self.gen_csw_anytext()
    #     super(Resource, self).save(*args, **kwargs)

    # Basic Info
    name = models.CharField(u'Title', max_length=255, help_text=HELP['title'])
    slug = models.SlugField(editable=False)
    short_description = models.CharField(u'Brief description', max_length=255,
                                         help_text=HELP['short_description'])
    description = models.TextField(u'Long description', help_text=HELP['description'])
    department = models.ForeignKey(Department, help_text=HELP['agency_name'])
    division = models.ForeignKey(Division, blank=True, null=True,
                                help_text=HELP['agency_division'])
    agency_type = models.CharField(choices=AGENCY_TYPES, max_length=16,
                                   help_text=HELP['agency_type'])
    cities = models.ManyToManyField(City, blank=True, null=True)
    counties = models.ManyToManyField(County, blank=True, null=True)
    usage = models.TextField(u'Relevance', help_text=HELP['relevance'],
                             editable=False)
    newest_record = models.DateField(blank=True, null=True)
    oldest_record = models.DateField(blank=True, null=True)

    updates = models.ForeignKey(UpdateFrequency, null=True, blank=True,
                                help_text=HELP['update_frequency'],
                                )
    categories = models.ManyToManyField(Category, related_name="resources",
                                        blank=True, null=True)
    keywords = models.CommaSeparatedIntegerField(max_length=255, blank=True,
                                                 verbose_name=FIELDS['keywords'],
                                                 help_text=HELP['keywords'])
    data_types = models.ManyToManyField(DataType, blank=True, null=True)

    # More Info
    contact_phone = models.CharField(max_length=50, blank=True)
    contact_email = models.CharField(max_length=255, blank=True)
    contact_url = models.CharField(max_length=255, blank=True)

    area_of_interest = models.CharField(max_length=255, blank=True)
    is_published = models.BooleanField(default=True, verbose_name="Public")
    
    created_by = models.ForeignKey(User, related_name='created_by')
    last_updated_by = models.ForeignKey(User, related_name='updated_by')
    created = models.DateTimeField()
    last_updated = models.DateTimeField(auto_now=True)
    metadata_contact = models.CharField(max_length=255, blank=True)
    metadata_notes = models.TextField(blank=True)
    coord_sys = models.ManyToManyField(CoordSystem, blank=True, null=True,
                                       verbose_name="Coordinate system")
        
    rating = RatingField(range=5, can_change_vote=True)

    data_formats = models.CharField(max_length=255, blank=True, editable=False)
    proj_coord_sys = models.CharField(max_length=255, blank=True, verbose_name="Coordinate system")

    # CSW specific properties 
    wkt_geometry = models.TextField(blank=True)
    csw_typename = models.CharField(max_length=200, default="csw:Record")
    csw_schema = models.CharField(max_length=200, default="http://www.opengis.net/cat/csw/2.0.2")
    csw_mdsource = models.CharField(max_length=100, default="local")
    csw_xml = models.TextField(blank=True)
    csw_anytext = models.TextField(blank=True)

    # No longer used fields
    release_date = models.DateField(blank=True, null=True,
                                    help_text=HELP['last_updated'],
                                    editable=False)
    time_period = models.CharField(max_length=50, blank=True)
    update_frequency = models.CharField(max_length=255, blank=True,
                                        help_text=HELP['update_frequency'],
                                        editable=False)

    class Meta:
        ordering = ("-last_updated", )
    
    def get_distinct_url_types(self):
        types = []
        for url in self.url_set.all():
            if url.url_type not in types:
                types.append(url.url_type)
        return sorted(types, key=attrgetter('url_type'))
    
    def get_grouped_urls(self):
        urls = {}
        for utype in UrlType.objects.all():
            urls[utype.url_type] = self.url_set.filter(url_type=utype)            
        return urls
    
    def get_first_image(self):
        images = self.urlimage_set.all()
        if images.count() == 0:
            return None
        return images[0]
    
    def get_images(self):
        images = self.urlimage_set.all()
        if images.count() == 0:
            return None
        return images
    
    def get_absolute_url(self):
        return reverse('catalog_resource_detail', kwargs={'pk': self.id, 'slug':
            self.slug})

    def get_rating(self):
        """Return instance raiting as an intiger"""
        return math.floor(self.rating.get_rating())

    def __unicode__(self):
        return '%s' % self.name

    # CSW specific properties
    @property 
    def csw_identifier(self):
        return 'urn:x-odc:resource:%s::%d' % ("fix-me", self.id)

    @property
    def csw_type(self):
        data_types = self.data_types.values()
        if len(data_types) > 0:
            return data_types[0]['data_type']
        return None

    @property
    def csw_crs(self):
        crs = self.coord_sys.values()
        if len(crs) > 0:
            return crs[0]['name']
        return None

    @property
    def csw_links(self):
        links = []
        for url in self.url_set.all():
            tmp = '%s,%s,%s,%s' % (url.url_label, url.url_type.url_type, 'WWW:DOWNLOAD-1.0-http--download', url.url)
            links.append(tmp)
        abs_url = '%s%s' % (gen_website_url(), self.get_absolute_url())
        link = '%s,%s,%s,%s' % (self.name, self.name, 'WWW:LINK-1.0-http--link', abs_url)
        links.append(link)
        return '^'.join(links)

    @property
    def csw_keywords(self):
        keywords = []
        for keyword in self.tags.values():
            keywords.append(keyword['tag_name'])
        return ','.join(keywords)

    @property
    def csw_creator(self):
        creator = User.objects.filter(username=self.created_by)[0]
        return '%s %s' % (creator.first_name, creator.last_name)
 
    def gen_csw_xml(self):

        def nspath(ns, element):
            return '{%s}%s' % (ns, element)

        nsmap = {
            'csw': 'http://www.opengis.net/cat/csw/2.0.2',
            'dc' : 'http://purl.org/dc/elements/1.1/',
            'dct': 'http://purl.org/dc/terms/',
            'ows': 'http://www.opengis.net/ows',
            'xsi': 'http://www.w3.org/2001/XMLSchema-instance',
        }

        record = etree.Element(nspath(nsmap['csw'], 'Record'), nsmap=nsmap)
        etree.SubElement(record, nspath(nsmap['dc'], 'identifier')).text = self.csw_identifier
        etree.SubElement(record, nspath(nsmap['dc'], 'title')).text = self.name

        if self.csw_type is not None:
            etree.SubElement(record, nspath(nsmap['dc'], 'type')).text = self.csw_type

        for tag in self.tags.all():
            etree.SubElement(record, nspath(nsmap['dc'], 'subject')).text = tag.tag_name

        etree.SubElement(record, nspath(nsmap['dc'], 'format')).text = str(self.data_formats)

        abs_url = '%s%s' % (gen_website_url(), self.get_absolute_url())
        etree.SubElement(record, nspath(nsmap['dct'], 'references'), scheme='WWW:LINK-1.0-http--link').text = abs_url

        for link in self.url_set.all():
            etree.SubElement(record, nspath(nsmap['dct'], 'references'),
                             scheme='WWW:DOWNLOAD-1.0-http--download').text = link.url

        etree.SubElement(record, nspath(nsmap['dct'], 'modified')).text = str(self.last_updated)
        etree.SubElement(record, nspath(nsmap['dct'], 'abstract')).text = self.description

        etree.SubElement(record, nspath(nsmap['dc'], 'date')).text = str(self.created)
        etree.SubElement(record, nspath(nsmap['dc'], 'creator')).text = str(self.csw_creator)

        etree.SubElement(record, nspath(nsmap['dc'], 'coverage')).text = self.area_of_interest

        geom = loads(self.wkt_geometry)
        bounds = geom.envelope.bounds
        dimensions = str(geom.envelope._ndim)

        bbox = etree.SubElement(record, nspath(nsmap['ows'], 'BoundingBox'), dimensions=dimensions)

        if self.csw_crs is not None:
            bbox.attrib['crs'] = self.csw_crs

        etree.SubElement(bbox, nspath(nsmap['ows'], 'LowerCorner')).text = '%s %s' % (bounds[1], bounds[0])
        etree.SubElement(bbox, nspath(nsmap['ows'], 'UpperCorner')).text = '%s %s' % (bounds[3], bounds[2])

        return etree.tostring(record)

    def gen_csw_anytext(self):
        xml = etree.fromstring(self.csw_xml)
        return ' '.join([value.strip() for value in xml.xpath('//text()')])

    def save(self, *args, **kwargs):
        """Sets slug for resource."""
        if not self.id:
            self.slug = slugify(self.name)
        super(Resource, self).save(*args, **kwargs)


class Url(models.Model):
    url = models.CharField(max_length=255)
    url_label = models.CharField(max_length=255)
    url_type = models.ForeignKey(UrlType)
    resource = models.ForeignKey(Resource)

    def __unicode__(self):
        return '%s - %s - %s' % (self.url_label, self.url_type, self.url)


class UrlImage(models.Model):
    def get_image_path(instance, filename):
        fsplit = filename.split('.')
        extra = 1
        id = instance.resource.id
        test_path = os.path.join(settings.MEDIA_ROOT, 'url_images', str(instance.id), fsplit[0] + '_' + str(extra) + '.' + fsplit[1])
        while os.path.exists(test_path):
           extra += 1
           test_path = os.path.join(settings.MEDIA_ROOT, 'url_images', str(instance.id), fsplit[0] + '_' + str(extra) + '.' +  fsplit[1])
        path = os.path.join('url_images', str(id), fsplit[0] + '_' + str(extra) + '.' + fsplit[1])
        return path
        
    resource = models.ForeignKey(Resource)
    image = models.ImageField(upload_to=get_image_path,
        help_text="The site will resize this master image as necessary for page display")
    title = models.CharField(max_length=255, help_text="For image alt tags",
        blank=True)
    source = models.CharField(max_length=255, blank=True,
        help_text="Source location or person who created the image")
    source_url = models.CharField(max_length=255, blank=True)
    objects = ImageManager()
    
    def __unicode__(self):
        return '%s' % (self.image)


def gen_website_url():
    return "fix-me"
