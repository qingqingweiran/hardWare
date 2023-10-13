import json

from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .service import filterStasion, generateData

def getResponse(data):
    return {
        "code": "ok",
        "data": data,
    }

@csrf_exempt
def beginTask(request):

    if request.method == "GET":
        generateData().begin()
        return JsonResponse(getResponse("成功"), safe=False)

@csrf_exempt
def filterData(request):
    if request.method == "GET":
        print(request.GET.get("station"))
        data = filterStasion().filter(station=request.GET.get("station"))
        return JsonResponse(getResponse(data), safe=False)