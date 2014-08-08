from django.conf.urls import patterns, include, url

# class based
from articles.views import HelloTemplate

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'django_test1.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    # anything that starts with articles - use the sub routes specified
    # articles/all
    # articles/get/3
    (r'^articles/', include('articles.urls')),  # don't call url

    url(r'^hello/$', 'articles.views.hello', name='hello'),
    url(r'^hello2/$', 'articles.views.hello2', name='hello2'),
    url(r'^hello2_class/$', HelloTemplate.as_view()),
    url(r'^hello2_simple/$', 'articles.views.hello2_simple', name='hello2_simple'),

    url(r'^admin/', include(admin.site.urls)),

    # user auth urls
    url(r'^accounts/login/$', 'django_test1.views.login'),
    url(r'^accounts/auth/$', 'django_test1.views.auth_view'),
    url(r'^accounts/logout/$', 'django_test1.views.logout'),
    url(r'^accounts/loggedin/$', 'django_test1.views.loggedin'),
    url(r'^accounts/invalid/$', 'django_test1.views.invalid_login'),


)
