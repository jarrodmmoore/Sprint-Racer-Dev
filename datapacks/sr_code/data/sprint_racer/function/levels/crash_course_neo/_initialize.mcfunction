tp @a[tag=!dontWarp] 500 88 48

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 2
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 4
gamerule advance_time false
time set 24000
tag @a[tag=dontSetGamemode] add fr_nightvision

scoreboard players set @a tutorProgress 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1}] run tag @a remove noTutorial
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1}] run tag @a add noTutorial
scoreboard objectives add tutorialMessage dummy
scoreboard players reset @a tutorialMessage

#variables for crash course neo
scoreboard players set #ccneo_lap value 1
scoreboard players set #ccneo_route value 1

######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] add setBGM
#tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=8}] add musicViable
######