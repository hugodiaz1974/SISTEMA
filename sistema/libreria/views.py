from django.shortcuts import render
from django.http import HttpRespond

def inicio(request):
    return HttpRespond("<h1>Bienvenido</h1>")

# Create your views here.
