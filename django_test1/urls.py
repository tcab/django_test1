from django.conf.urls import patterns, include, url

# class based
from django_test_1.views import HelloTemplate

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'django_test1.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    # anything that starts with articles - use the sub routes specified
    # articles/all
    # articles/get/3
    (r'^articles/', include('django_test_1.urls')),  # don't call url

    url(r'^hello/$', 'django_test_1.views.hello', name='hello'),
    url(r'^hello2/$', 'django_test_1.views.hello2', name='hello2'),
    url(r'^hello2_class/$', HelloTemplate.as_view()),
    url(r'^hello2_simple/$', 'django_test_1.views.hello2_simple', name='hello2_simple'),

    url(r'^admin/', include(admin.site.urls)),
)
