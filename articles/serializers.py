from rest_framework import serializers

from .models import Article, Fred

class ArticleSerializer(serializers.ModelSerializer):
    articles = serializers.HyperlinkedIdentityField('articles', view_name='articles_list', lookup_field='title')

    class Meta:
        model = Article
        fields = ('id', 'title', 'likes', 'dislikes', 'pub_date', 'body')  # you seem to HAVE to define this.

"""
To Use:
See: http://blog.kevinastone.com/getting-started-with-django-rest-framework-and-angularjs.html

from articles.serializers import *

a1 = Article.objects.all()[0]   # this could be improved?
serializer = ArticleSerializer(a1)
print serializer.data

"""
