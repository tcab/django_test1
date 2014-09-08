from django.conf.urls import patterns, include, url

# SET UP THE REST API STUFF
from rest_framework import routers, serializers, viewsets
from serializers import ArticleViewSet
# Routers provide an easy way of automatically determining the URL conf.
router = routers.DefaultRouter()
router.register(r'articles', ArticleViewSet)

urlpatterns = patterns('',
   url(r'^all/$',                     'articles.views.articles'),
   url(r'^get/(?P<article_id>\d+)/$', 'articles.views.article'),
   url(r'^language/(?P<language>[a-z\-]+)/$', 'articles.views.setlanguage'),

    # Wire up our API using automatic URL routing.
    # Additionally, we include login URLs for the browseable API.
   url(r'^', include(router.urls)),
   url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework'))

)

"""
REST NOTES FROM http://www.django-rest-framework.org/

You can now open the API in your browser at http://127.0.0.1:8000/,
and view your new 'articles' API. If you use the login control in
the top right corner you'll also be able to add,
create and delete articles from the system.  -- HOW?
"""
