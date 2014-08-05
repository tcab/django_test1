"""
Django settings for django_test1 project.

For more information on this file, see
https://docs.djangoproject.com/en/1.6/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.6/ref/settings/
"""

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
BASE_DIR = os.path.dirname(os.path.dirname(__file__))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.6/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '3ux1u_4l1jfwh(-&v035a6ry^k%tj_gz4^%mp(r09)x(xu*8z&'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'south',
    'articles',
)

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'django_test1.urls'

WSGI_APPLICATION = 'django_test1.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.6/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

# Internationalization
# https://docs.djangoproject.com/en/1.6/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.6/howto/static-files/
# STATIC_ROOT = ''
# STATIC_ROOT=os.path.join(BASE_DIR, 'static')
# STATIC_URL = '/static/'
#
# STATICFILES_DIRS = (
#     ('assets', os.path.join(BASE_DIR, 'static'))
# )

# Theoretically STATIC_URL could be something like "http://media.lawrence.com/static/"

STATIC_ROOT = 'staticfiles'
STATIC_URL = "/static/"
STATICFILES_DIRS = (
('assets', os.path.join(BASE_DIR, "static")),
)


TEMPLATE_DIRS = (
    os.path.join(BASE_DIR,  'templates'),
    os.path.join(BASE_DIR,  'articles/templates'),
)

"""
ANDY NOTES:

South Migrations
================
pip install South
python manage.py syncdb django_test1

# use south from the beginning
python manage.py schemamigration articles --init
python manage.py migrate articles

# converting to south
python manage.py convert_to_south articles
python manage.py migrate articles  # not necessary - will say you are already at head

# our first migration, after adding a field
python manage.py schemamigration articles --auto
python manage.py migrate articles

# Listing current migrations
manage.py migrate --list
# Help
python manage.py migrate --help

"""