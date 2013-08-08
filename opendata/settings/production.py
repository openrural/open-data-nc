from opendata.settings.staging import *

# There should be only minor differences from staging

DATABASES['default']['NAME'] = 'opendata_production'

PUBLIC_ROOT = '/var/www/opendata-production/public/'

STATIC_ROOT = os.path.join(PUBLIC_ROOT, 'static')

MEDIA_ROOT = os.path.join(PUBLIC_ROOT, 'media')

EMAIL_SUBJECT_PREFIX = '[Open Data NC Prod] '

# Uncomment if using celery worker configuration
BROKER_URL = 'amqp://opendata:%s@127.0.0.1:5672/opendata_production' % os.environ['BROKER_PASSWORD']

SITE_URL = "http//www.open-nc.org"
