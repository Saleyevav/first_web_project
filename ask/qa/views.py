# -*- coding: utf-8 -*-
from django.http import HttpResponse
def test(request, *args, **kwargs):
    return HttpResponse('OK')

# Create your views here.
