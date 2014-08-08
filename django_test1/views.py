__author__ = 'Andy'

# Site wide urls

from django.shortcuts import render_to_response
from django.http import HttpResponseRedirect
from django.contrib import auth
from django.core.context_processors import csrf  # cross site request forgery

def login(request):
    c = {}
    c.update(csrf(request))
    return render_to_response('login.html', c)

def auth_view(request):
    username = request.POST.get('username', '')
    password = request.POST.get('password', '')

    # Check if user exists and password is correct
    user = auth.authenticate(username=username, password=password)
    if user is not None:
        # signify that the user should be marked as logged in ok
        auth.login(request, user)
        return HttpResponseRedirect('/accounts/loggedin')
    else:
        # didn't find a user
        return HttpResponseRedirect('/accounts/invalid')

def loggedin(request):
    # request.user is a new part of the system which has various properties
    # which we can pass in to our views.
    return render_to_response('loggedin.html',
        {'full_name': request.user.username})

def invalid_login(request):
    return render_to_response('invalid_login.html')

def logout(request):

    # we use auth object to logout
    auth.logout(request)

    return render_to_response('logout.html')
