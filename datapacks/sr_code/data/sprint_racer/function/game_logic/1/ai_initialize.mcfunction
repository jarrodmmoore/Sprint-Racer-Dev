#should probably be run by "w" lol

#prevent memory leak due to entities lingering in the world
kill @e[type=minecraft:area_effect_cloud,tag=!node]
kill @e[type=marker,tag=!node]

#what entity are we using?
function sprint_racer:ai/general/set_entity_type

tag @e[tag=random,tag=eliminated] remove eliminated

tag @e[tag=random,tag=aiDisable,type=armor_stand] remove aiDisable
scoreboard players reset @e[tag=random,type=armor_stand,scores={finishPos=..99}] finishPos

tag @s remove agogo
scoreboard players set @e[tag=w,type=armor_stand] playerCount 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,type=armor_stand] playerCount 1
execute if entity @e[tag=w,type=armor_stand,tag=optRAIsingle,scores={playerCount=..1}] run tag @s add agogo
execute if entity @e[tag=w,type=armor_stand,tag=optRAIalways,tag=!RAIautocount] run tag @s add agogo
execute if entity @e[tag=w,type=armor_stand,tag=optRAIalways,tag=RAIautocount,scores={playerCount=..3}] run tag @s add agogo
execute if entity @e[tag=w,type=armor_stand,tag=optRAInever] run tag @s remove agogo

execute if entity @e[tag=w,type=armor_stand,tag=agogo,tag=noAItrack] run function sprint_racer_language:gameplay/ai_not_supported
execute if entity @e[tag=w,type=armor_stand,tag=noAItrack] run tag @s remove agogo

#most servers cannot handle the full power of the AI so we'll enter "half tick" mode for performance sake
execute if entity @e[tag=w,type=armor_stand,tag=autotick] if entity @s[tag=agogo] run tag @e[tag=w,type=armor_stand] add halftick

#store desired bot count in temp variable
scoreboard players operation #test value = @e[tag=w,type=armor_stand] optRAIcount

#auto ai count? only add ais until we meet the desired player count
execute if entity @e[tag=w,type=armor_stand,tag=RAIautocount] run scoreboard players operation #test value -= @e[tag=w,type=armor_stand] playerCount

#cleanup before we re-add some tags
tag @e[tag=AImaster,type=armor_stand] remove AImaster
tag @e[tag=random,type=armor_stand,scores={rNumber=1..9}] remove playerOrange
tag @e[tag=random,type=armor_stand,scores={rNumber=1..9}] remove playerCyan

#itemLuck
scoreboard players set @e[tag=random,type=armor_stand,scores={rNumber=1..9}] itemLuck 3

#add the bots we wanted
execute if entity @s[tag=agogo] if score #test value matches 1 run tag @e[tag=random,type=armor_stand,scores={rNumber=1}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 2 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..2}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 3 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..3}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 4 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..4}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 5 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..5}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 6 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..6}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 7 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..7}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 8 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..8}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 9.. run tag @e[tag=random,type=armor_stand,scores={rNumber=1..9}] add AImaster

execute if entity @s[tag=agogo] run scoreboard players operation global playerRequire += #test value

execute if entity @e[tag=w,type=armor_stand,tag=optRAInever] run tag @e[tag=AImaster,type=armor_stand] remove AImaster

#assign AI to teams if needed
execute if entity @e[tag=w,type=armor_stand,tag=teamplay] run function sprint_racer:teams/assemble_teams_ai
function sprint_racer_language:_dlc_2/gameplay/position_display/ai_sidebar_colors

#adopt race difficulty setting
execute as @e[tag=w,type=armor_stand] run scoreboard players operation @s optAIdiff = @s optRAIdiff
#difficulty
scoreboard players set @e[tag=AImaster] aiSkill 2
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] as @e[tag=AImaster,type=armor_stand] run scoreboard players operation @s aiSkill = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..3}] rNumber
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=0}] run scoreboard players set @e[tag=AImaster,type=armor_stand] aiSkill 0
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=1}] run scoreboard players set @e[tag=AImaster,type=armor_stand] aiSkill 1
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=2}] run scoreboard players set @e[tag=AImaster,type=armor_stand] aiSkill 2
execute if entity @e[tag=w,type=armor_stand,scores={optAIdiff=3}] run scoreboard players set @e[tag=AImaster,type=armor_stand] aiSkill 3

#calculating overall "maturity" of players
scoreboard players set @e[tag=w,type=armor_stand] maturity 0
execute as @a[tag=playing] run scoreboard players operation @e[tag=w,type=armor_stand] maturity += @s maturity
scoreboard players operation @e[tag=w,type=armor_stand] maturity /= @e[tag=w,limit=1,type=armor_stand] playerCountB

#if set to "random" AI difficulty, harder AI will be made easy if most players have a low aiLevel score
execute if score global aiLevel matches ..0 if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,scores={aiSkill=2..}] aiSkill 0
execute if score global aiLevel matches 1..3 if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,scores={aiSkill=2..}] aiSkill 0
execute if score global aiLevel matches 4..6 if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,scores={aiSkill=2..}] aiSkill 1
execute if score global aiLevel matches 7 if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,scores={aiSkill=3..}] aiSkill 1
execute if score global aiLevel matches 8..9 if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,scores={aiSkill=3..}] aiSkill 2
execute if score global aiLevel matches 13.. if entity @e[tag=w,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,scores={rNumber=1}] aiSkill 3

#bossfight, rNumber 1 only, max difficulty only
execute if entity @e[tag=cheats,type=armor_stand,tag=19a,tag=!43a] run tag @e[tag=random,scores={rNumber=2..9}] remove AImaster
execute if entity @e[tag=cheats,type=armor_stand,tag=19a,tag=!43a] run scoreboard players set @e[tag=AImaster,scores={rNumber=1}] aiSkill 3

scoreboard players set @e[tag=AImaster,type=armor_stand] check 0
scoreboard players set @e[tag=AImaster,type=armor_stand] lap 1
scoreboard players set @e[tag=AImaster,type=armor_stand] lapFake 1
scoreboard players set @e[tag=AImaster,type=armor_stand] lastTeleport 0
execute as @e[tag=AImaster,type=armor_stand] run function sprint_racer:give_ids2

execute as @e[tag=AImaster,type=armor_stand] run scoreboard players add @e[tag=w,type=armor_stand] addPoints 1

scoreboard players set @e[tag=AImaster,type=armor_stand] aiJBTime 0
scoreboard players set @e[tag=AImaster,type=armor_stand] aiJBIntensity 0
scoreboard players set @e[tag=AImaster,type=armor_stand] aiJBDelay 0
scoreboard players set @e[tag=AImaster,type=armor_stand] timeSinceCheck 0

tag @e[tag=agogogo] remove agogo