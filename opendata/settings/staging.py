from opendata.settings.base import *

DEBUG = False
TEMPLATE_DEBUG = DEBUG

SECRET_KEY = os.environ['SECRET_KEY']

DATABASES['default']['NAME'] = 'opendata_staging'

PUBLIC_ROOT = '/var/www/opendata-staging/public/'

STATIC_ROOT = os.path.join(PUBLIC_ROOT, 'static')

MEDIA_ROOT = os.path.join(PUBLIC_ROOT, 'media')

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.memcached.MemcachedCache',
        'LOCATION': '127.0.0.1:11211',
    }
}

EMAIL_SUBJECT_PREFIX = '[Open Data NC Staging] '

COMPRESS_ENABLED = True

SESSION_COOKIE_SECURE = True

SESSION_COOKIE_HTTPONLY = True

ALLOWED_HOSTS = ('*',)

BROKER_URL = 'amqp://opendata:%s@127.0.0.1:5672/opendata_staging' % os.environ['BROKER_PASSWORD']

SITE_URL = "http//staging.open-nc.org"
