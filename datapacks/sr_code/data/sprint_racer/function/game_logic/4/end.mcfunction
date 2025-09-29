#end grand prix here
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] gpRound 1
execute if entity @s[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix,tag=!grandprixloop] run scoreboard players set grandprix gameState 0

execute if entity @s[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix,tag=!grandprixloop] run setblock 1615 81 369 stone_button[facing=north]
execute if entity @s[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix,tag=!grandprixloop] run setblock 1611 81 369 stone_button[facing=north]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix,tag=!grandprixloop] remove grandprix
scoreboard objectives remove gpPoints
scoreboard objectives add gpPoints dummy

#change the lobby back to normal
function sprint_racer:game_logic/0/misc_lobby_happenings/remove_lingering_podium

#clear displays
scoreboard objectives setdisplay sidebar
#CLEAR POINTS NOW
function sprint_racer:game_logic/0/clear_points

#re-randomize ai if on the random setting
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9,customAIset=-11..-10}] run scoreboard players set @s aiEntity 0
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9,customAIset=-10}] run function sprint_racer:ai/general/pick_random_entity_any
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9,customAIset=-11}] run function sprint_racer:ai/general/pick_random_entity_human

#clean up tags
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber2 1

tag @e[name=,type=armor_stand] remove ceremony

execute as @a at @s run function sprint_racer:game_logic/0/goto_spawn
#tag @a remove readyup
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyState 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] maturity 4
function sprint_racer:game_logic/0/_initialize_for_real