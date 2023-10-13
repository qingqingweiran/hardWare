from django.db import models

class cuttingStation(models.Model):
    id = models.AutoField(primary_key=True)
    goodsNumber = models.IntegerField(null=True)
    stayTime = models.IntegerField(null=True)
    comingTime = models.BigIntegerField(null=True)
    leavingTime = models.BigIntegerField(null=True)

    class Meta:
        db_table = "cuttingStation"

class assembleStation(models.Model):
    id = models.AutoField(primary_key=True)
    goodsNumber = models.IntegerField(null=True)
    stayTime = models.IntegerField(null=True)
    comingTime = models.BigIntegerField(null=True)
    leavingTime = models.BigIntegerField(null=True)

    class Meta:
        db_table = "assembleStation"


class packStationStation(models.Model):
    id = models.AutoField(primary_key=True)
    goodsNumber = models.IntegerField(null=True)
    stayTime = models.IntegerField(null=True)
    comingTime = models.BigIntegerField(null=True)
    leavingTime = models.BigIntegerField(null=True)

    class Meta:
        db_table = "packStation"
