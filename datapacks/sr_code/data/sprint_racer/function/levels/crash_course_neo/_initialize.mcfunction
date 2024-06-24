tp @a[tag=!dontWarp] 500 88 48

scoreboard players set @e[tag=w,type=armor_stand] lap 2
scoreboard players set @e[tag=w,type=armor_stand] check 4
gamerule doDaylightCycle false
time set 24000
tag @a[tag=dontSetGamemode] add fr_nightvision

scoreboard players set @a tutorProgress 0
execute if entity @e[tag=w,scores={gameState=1}] run tag @a remove noTutorial
execute unless entity @e[tag=w,scores={gameState=1}] run tag @a add noTutorial
scoreboard objectives add tutorialMessage dummy
scoreboard players reset @a tutorialMessage

#variables for crash course neo
scoreboard players set #ccneo_lap value 1
scoreboard players set #ccneo_route value 1

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=20}] add setBGM
#tag @e[tag=random,type=armor_stand,scores={rNumber=8}] add musicViable
######