tp @a[tag=!dontWarp] 1088 72 297

scoreboard players set @e[tag=w,type=armor_stand] lap 4
scoreboard players set @e[tag=w,type=armor_stand] check 2
gamerule doDaylightCycle false
time set 1000

scoreboard players set @a tutorProgress 0
execute if entity @e[tag=w,scores={gameState=1}] run tag @a remove noTutorial
execute unless entity @e[tag=w,scores={gameState=1}] run tag @a add noTutorial



######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=20}] add setBGM
#tag @e[tag=random,type=armor_stand,scores={rNumber=8}] add musicViable
######