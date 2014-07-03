from django.conf.urls import patterns, include, url

urlpatterns = patterns('',
   url(r'^all/$',                     'django_test_1.views.articles'),
   url(r'^get/(?P<article_id>\d+)/$', 'django_test_1.views.article')
)