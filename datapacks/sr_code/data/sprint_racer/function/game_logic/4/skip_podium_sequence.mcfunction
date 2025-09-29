scoreboard objectives setdisplay sidebar

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove ceremony

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber2 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gpRound 1

execute as @a at @s run function sprint_racer:game_logic/0/goto_spawn
#tag @a remove readyup
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyState 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] maturity 4

#reminder that players can use the command block to vote back to lobby (relevant if not choosing or voting)
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add remind2vote
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add gp_no_lobby_return

#re-randomize ai
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9,customAIset=-11..-10}] run scoreboard players set @s aiEntity 0
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9,customAIset=-10}] run function sprint_racer:ai/general/pick_random_entity_any
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9,customAIset=-11}] run function sprint_racer:ai/general/pick_random_entity_human

#party keeps going
#function sprint_racer:game_logic/0/_initialize_for_real
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] run function sprint_racer:game_logic/0/_initialize