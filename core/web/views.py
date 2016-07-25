from django.shortcuts import render
from django.core.exceptions import ObjectDoesNotExist

from .models import TestModel

def index(request):

    try:
        db_status = TestModel.objects.all()[:1]
    except ObjectDoesNotExist:
        db_status = None

    return render(request, 'web/index.html', {'db_status': db_status})
