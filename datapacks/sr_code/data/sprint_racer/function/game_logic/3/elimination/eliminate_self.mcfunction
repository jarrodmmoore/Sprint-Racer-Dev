#this is run by the poor sap who got eliminated

#get a finishPos from everyone else
scoreboard players set @s finishPos 1
tag @s add idie
execute as @a[tag=playing,tag=!idie,tag=!eliminated] run scoreboard players add @e[tag=idie] finishPos 1
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,tag=!idie,tag=!aiDisable] run scoreboard players add @e[tag=idie] finishPos 1
tag @s remove idie

#this is for races but it still works here so we'll use it anyway
execute if entity @s[type=player] run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay] if entity @s[type=!player] run function sprint_racer_language:_dlc_1/gameplay/battle_elimination/announce_elimination_ai
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay] if entity @s[type=!player] run function sprint_racer_language:_dlc_2/gameplay/battle_elimination/announce_elimination_ai_teams

clear @s
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay] run team join playerFinished @s[type=player]
gamemode spectator @s[type=player]
tag @s add eliminated
tag @s add finished

scoreboard players set @s addPoints 0
scoreboard players operation @s addPoints += @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] addPoints2
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints2 1

#AI stuff
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] run scoreboard objectives remove validAI1
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] run scoreboard objectives remove validAI2
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] run scoreboard objectives remove validAI3
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] run scoreboard objectives remove validAI4
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] run scoreboard objectives remove validAI5
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] run scoreboard objectives remove validAI6
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] run scoreboard objectives remove validAI7
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] run scoreboard objectives remove validAI8
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] run scoreboard objectives remove validAI9
execute if entity @s[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run tag @s add aiDisable

#make w do some logic
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s run function sprint_racer:game_logic/3/elimination/after_elimination

#ai dies
execute if entity @s[tag=ai] run kill @s