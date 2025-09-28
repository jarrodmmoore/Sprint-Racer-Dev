#should probably be run by "w" lol

#prevent memory leak due to entities lingering in the world
kill @e[type=minecraft:area_effect_cloud,tag=!node]
kill @e[type=marker,tag=!node]

#what entity are we using?
function sprint_racer:ai/general/set_entity_type_credits

#set bot username
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] run function sprint_racer:ai/general/update_bot_name

#clean up some tags
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,tag=eliminated] remove eliminated

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,tag=aiDisable] remove aiDisable
scoreboard players reset @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={finishPos=..99}] finishPos

tag @s add agogo

#do NOT enter "half tick" mode. it makes the camera jerk around!
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autotick] remove halftick

tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] remove AImaster
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] remove playerOrange
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] remove playerCyan

#we're gonna activate EVERY ai for this!
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] add AImaster

execute if entity @s[tag=agogo] run scoreboard players operation global playerRequire += @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] optRAIcount

#assign AI to teams if needed
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay] run function sprint_racer:teams/assemble_teams_ai
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] run function sprint_racer_language:_dlc_2/gameplay/position_display/ai_sidebar_colors

#difficulty
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] aiSkill 2
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] aiSkill 1
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] aiSkill 3
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] aiSkill 2
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] aiSkill 3
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] aiSkill 3
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] aiSkill 2
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] aiSkill 1
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] aiSkill 3


scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] check 0
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] lap 1
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] lastTeleport 0
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run function sprint_racer:give_ids2

execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints 1

scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] aiJBTime 0
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] aiJBIntensity 0
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] aiJBDelay 0
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] timeSinceCheck 0

tag @e[tag=agogogo] remove agogo