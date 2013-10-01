import sys

from opendata.settings.base import *

DEBUG = True
TEMPLATE_DEBUG = DEBUG

# MIDDLEWARE_CLASSES += (
#     'debug_toolbar.middleware.DebugToolbarMiddleware',
# )

# INSTALLED_APPS += (
#     'debug_toolbar',
# )

# DEBUG_TOOLBAR_CONFIG = {
#     'INTERCEPT_REDIRECTS': False
# }

THUMBNAIL_DEBUG = True

INTERNAL_IPS = ('127.0.0.1', )

#EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

SOUTH_TESTS_MIGRATE = True

CELERY_ALWAYS_EAGER = True

COMPRESS_ENABLED = False

# Doesn't matter what this is with the dev settings
SECRET_KEY = 'da0*+4%hq_@np$&)6q+76c)prm=!74f_sx^drbiio1f+-n9x^n'

SITE_URL = "http//localhost"

# Special test settings
if 'test' in sys.argv:
    CELERY_ALWAYS_EAGER = True

    COMPRESS_ENABLED = False

    COMPRESS_PRECOMPILERS = ()

    PASSWORD_HASHERS = (
        'django.contrib.auth.hashers.SHA1PasswordHasher',
        'django.contrib.auth.hashers.MD5PasswordHasher',
    )
