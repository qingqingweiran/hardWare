import random
import threading
import time
import random
from .models import cuttingStation,assembleStation,packStationStation


class generateData():

    def cuttingStationThread(self):
        count = 0
        while True:
            comingTime =int(time.time())
            leavingTime =int(time.time() + random.randint(1, 10))
            cuttingStation(goodsNumber =count + 1,
                           comingTime=comingTime,
                           leavingTime=leavingTime,
                           stayTime=leavingTime-comingTime).save()
            count += 1
            time.sleep(1)


    def assembleStationThread(self):
        count = 0
        while True:
            comingTime = int(time.time())
            leavingTime = int(time.time() + random.randint(1, 10))
            assembleStation(goodsNumber=count + 1,
                           comingTime=comingTime,
                           leavingTime=leavingTime,
                           stayTime=leavingTime - comingTime).save()
            count+=1
            time.sleep(1)

    def packStationStationThread(self):
        count = 0
        while True:
            comingTime = int(time.time())
            leavingTime = int(time.time() + random.randint(1, 10))
            packStationStation(goodsNumber=count + 1,
                            comingTime=comingTime,
                            leavingTime=leavingTime,
                            stayTime=leavingTime - comingTime).save()
            count += 1
            time.sleep(1)

    def begin(self):
        cuttingStationThread = threading.Thread(target=self.cuttingStationThread)
        assembleStationThread = threading.Thread(target=self.assembleStationThread)
        packStationStationThread = threading.Thread(target=self.packStationStationThread)
        cuttingStationThread.start()
        assembleStationThread.start()
        packStationStationThread.start()


class filterStasion():
    def filter(self, station:str):
        zeronTimeStamp = int(time.time() - (time.time() % 86400))
        oneDayTimeStamp = zeronTimeStamp + 86400
        resultList = []
        if station== "cuttingStation":
            allData = cuttingStation.objects.filter(comingTime__range=[zeronTimeStamp, oneDayTimeStamp])
            for data in allData:
                resultList.append(self.cover( data))

        elif station == "assembleStation":
            allData = assembleStation.objects.filter(comingTime__range=[zeronTimeStamp, oneDayTimeStamp])
            for data in allData:
                resultList.append(self.cover(data))
        elif station == "packStation":
            allData = packStationStation.objects.filter(comingTime__range=[zeronTimeStamp, oneDayTimeStamp])
            for data in allData:
                resultList.append(self.cover(data))

        return resultList

    def cover(self, data):
        return {
            "goodsNumber": data.goodsNumber,
            "comingTime": data.comingTime,
            "leavingTime": data.leavingTime,
            "stayTime": data.stayTime,
        }