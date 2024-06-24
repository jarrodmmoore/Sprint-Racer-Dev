scoreboard players operation global cameraMode = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=1..20}] rNumber

#random time interval
scoreboard players set global math 5
scoreboard players set global math2 10
scoreboard players operation global math = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=1..10}] rNumber
scoreboard players operation global math *= global math2
scoreboard players set global cameraTime 60
scoreboard players operation global cameraTime += global math