#should probably be run by "w" lol

#before we start, make sure at least a few nodes are loaded
function sprint_racer:game_logic/2/node_update/_tick_restore
execute as @e[tag=node,tag=activator,scores={nodeState=1..}] at @s run scoreboard players set @e[tag=node,distance=..100] nodeState 1

#prevent memory leak due to entities lingering in the world
kill @e[type=minecraft:area_effect_cloud,tag=!node]
kill @e[type=marker,tag=!node]

#what entity are we using?
function sprint_racer:ai/general/set_entity_type

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,tag=eliminated,type=armor_stand] remove eliminated

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,tag=aiDisable,type=armor_stand] remove aiDisable
scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] KOs 0
scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] KOgoal 3

tag @s remove agogo
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optBAIsingle,scores={playerCount=..1}] run tag @s add agogo
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optBAIalways,tag=!BAIautocount] run tag @s add agogo
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optBAIalways,tag=BAIautocount,scores={playerCount=..3}] run tag @s add agogo
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optBAInever] run tag @s remove agogo

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=agogo,tag=noAItrack] run function sprint_racer_language:gameplay/ai_not_supported
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noAItrack] run tag @s remove agogo

#most servers cannot handle the full power of the AI so we'll enter "half tick" mode for performance sake
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autotick] if entity @s[tag=agogo] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add halftick

#store desired bot count in temp variable
scoreboard players operation #test value = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optBAIcount

#auto ai count? only add ais until we meet the desired player count
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=BAIautocount] run scoreboard players operation #test value -= @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerCount

#cleanup before we re-add some tags
tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] remove AImaster
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] remove playerOrange
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] remove playerCyan

#itemLuck
scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] itemLuck 3

#add the bots we wanted
execute if entity @s[tag=agogo] if score #test value matches 1 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 2 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..2}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 3 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..3}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 4 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..4}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 5 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..5}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 6 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..6}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 7 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..7}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 8 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..8}] add AImaster
execute if entity @s[tag=agogo] if score #test value matches 9.. run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] add AImaster

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optBAInever] run tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] remove AImaster

#assign AI to teams if needed
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=teamplay,type=armor_stand] run function sprint_racer:teams/assemble_teams_ai
function sprint_racer_language:_dlc_2/gameplay/position_display/ai_sidebar_colors

#adopt race difficulty setting
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run scoreboard players operation @s optAIdiff = @s optBAIdiff
#difficulty
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] aiSkill 2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=-1}] as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s aiSkill = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..3}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=0}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] aiSkill 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] aiSkill 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=2}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] aiSkill 2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=3}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] aiSkill 3

#calculating overall "maturity" of players
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] maturity 0
execute as @a[tag=playing] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] maturity += @s maturity
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] maturity /= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] playerCountB

#if set to "random" AI difficulty, harder AI will be made easy if most players have a low maturity score
execute if score global aiLevel matches ..0 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={aiSkill=2..}] aiSkill 0
execute if score global aiLevel matches 1..3 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={aiSkill=2..}] aiSkill 0
execute if score global aiLevel matches 4..6 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={aiSkill=2..}] aiSkill 1
execute if score global aiLevel matches 7 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={aiSkill=3..}] aiSkill 1
execute if score global aiLevel matches 8..9 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={aiSkill=3..}] aiSkill 2
execute if score global aiLevel matches 13.. if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={optAIdiff=-1}] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] aiSkill 3

#bossfight, rNumber 1 only, max difficulty only
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=19a,tag=!43a] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2..9}] remove AImaster
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=19a,tag=!43a] run scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] aiSkill 3

#give lives to AImaster
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] playerLives 3

scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] KOs 0
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run function sprint_racer:give_ids2

tag @e[tag=agogogo] remove agogo