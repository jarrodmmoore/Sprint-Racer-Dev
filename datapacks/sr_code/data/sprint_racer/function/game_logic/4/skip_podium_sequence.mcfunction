scoreboard objectives setdisplay sidebar

tag @e[tag=w,type=armor_stand] remove ceremony

scoreboard players set @e[tag=w,type=armor_stand] roundNumber 1
scoreboard players set @e[tag=w,type=armor_stand] roundNumber2 1
scoreboard players set @e[tag=w,type=armor_stand] gpRound 1

execute as @a at @s run function sprint_racer:game_logic/0/goto_spawn
#tag @a remove readyup
#scoreboard players set @e[tag=w,type=armor_stand] readyState 0
scoreboard players set @e[tag=w,type=armor_stand] maturity 4

#reminder that players can use the command block to vote back to lobby (relevant if not choosing or voting)
tag @e[tag=w,type=armor_stand] add remind2vote
tag @e[tag=w,type=armor_stand] add gp_no_lobby_return

#party keeps going
#function sprint_racer:game_logic/0/_initialize_for_real
execute unless entity @e[tag=w,type=armor_stand,tag=grandprix] run function sprint_racer:game_logic/0/_initialize