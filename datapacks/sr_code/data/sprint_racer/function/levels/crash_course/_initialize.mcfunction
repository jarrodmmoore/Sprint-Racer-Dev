tp @a[tag=!dontWarp] 1088 72 297

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 4
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 2
gamerule advance_time false
time set 1000

scoreboard players set @a tutorProgress 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1}] run tag @a remove noTutorial
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1}] run tag @a add noTutorial



######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=20}] add setBGM
#tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=8}] add musicViable
######