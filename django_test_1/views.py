from django.shortcuts import render
from django.http import HttpResponse
from django.template.loader import get_template
from django.template import Context

# class based views
from django.views.generic.base import TemplateView

# cheating
from django.shortcuts import render_to_response

# Create your views here.

def hello(request):
    name = "Andy"
    html = "<html><body>Hi %s, this seems to have worked!</body></html>" % name
    return HttpResponse(html)

def hello2(request):
    name = "Mike"
    t = get_template('hello2.html')
    html = t.render(Context({'name': name, 'info': [1,2,3]}))
    return HttpResponse(html)

class HelloTemplate(TemplateView):

    template_name = 'hello2_class.html'

    def get_context_data(self, **kwargs):
        ctx = super(HelloTemplate, self).get_context_data(**kwargs)
        ctx['name'] = 'Freddy'
        return ctx

def hello2_simple(request):
    return render_to_response('hello2.html', {'name': 'Sally'})

# ARTICLE STUFF (note, django_test_1 should be renamed 'article')

from django_test_1.models import Article

def articles(request):
    return render_to_response('articles.html',
                              { 'articles': Article.objects.all() })

def article(request, article_id=1):
    return render_to_response('article.html',
                              { 'article': Article.objects.get(id=article_id) })