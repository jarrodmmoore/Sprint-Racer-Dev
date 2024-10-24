#should probably be run by "w" lol

#prevent memory leak due to entities lingering in the world
kill @e[type=minecraft:area_effect_cloud,tag=!node]
kill @e[type=marker,tag=!node]

#what entity are we using?
function sprint_racer:ai/general/set_entity_type_credits

tag @e[tag=random,tag=eliminated] remove eliminated

tag @e[tag=random,tag=aiDisable] remove aiDisable
scoreboard players reset @e[tag=random,scores={finishPos=..99}] finishPos

tag @s add agogo

#do NOT enter "half tick" mode. it makes the camera jerk around!
tag @e[tag=w,type=armor_stand,tag=autotick] remove halftick

tag @e[tag=AImaster] remove AImaster
tag @e[tag=random,scores={rNumber=1..9}] remove playerOrange
tag @e[tag=random,scores={rNumber=1..9}] remove playerCyan

#we're gonna activate EVERY ai for this!
tag @e[tag=random,scores={rNumber=1..9}] add AImaster

execute if entity @s[tag=agogo] run scoreboard players operation global playerRequire += @e[tag=w,type=armor_stand,limit=1] optRAIcount

#assign AI to teams if needed
execute if entity @e[tag=w,tag=teamplay] run function sprint_racer:teams/assemble_teams_ai
function sprint_racer_language:_dlc_2/gameplay/position_display/ai_sidebar_colors

#difficulty
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=1}] aiSkill 2
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=2}] aiSkill 1
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=3}] aiSkill 3
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=4}] aiSkill 2
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=5}] aiSkill 3
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=6}] aiSkill 3
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=7}] aiSkill 2
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=8}] aiSkill 1
scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=9}] aiSkill 3


scoreboard players set @e[tag=AImaster] check 0
scoreboard players set @e[tag=AImaster] lap 1
scoreboard players set @e[tag=AImaster] lastTeleport 0
execute as @e[tag=AImaster] run function sprint_racer:give_ids2

execute as @e[tag=AImaster] run scoreboard players add @e[tag=w,type=armor_stand] addPoints 1

scoreboard players set @e[tag=AImaster] aiJBTime 0
scoreboard players set @e[tag=AImaster] aiJBIntensity 0
scoreboard players set @e[tag=AImaster] aiJBDelay 0
scoreboard players set @e[tag=AImaster] timeSinceCheck 0

tag @e[tag=agogogo] remove agogo