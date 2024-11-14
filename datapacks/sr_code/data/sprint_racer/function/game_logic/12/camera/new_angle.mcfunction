scoreboard players operation global cameraMode = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=1..20}] rNumber

#don't do camera 10. it sucks. do fixed follow cam instead
execute if score global cameraMode matches 10 run scoreboard players set global cameraMode 20

#random time interval
scoreboard players set global math 5
scoreboard players set global math2 10
scoreboard players operation global math = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=1..10}] rNumber
scoreboard players operation global math *= global math2
scoreboard players set global cameraTime 60
scoreboard players operation global cameraTime += global math