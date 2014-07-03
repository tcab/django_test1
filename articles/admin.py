from django.contrib import admin

# Register your models here.

from articles.models import Article
from articles.models import Fred

admin.site.register(Article)
admin.site.register(Fred)

"""
My db password for the admin interface is
andy / andy

"""
