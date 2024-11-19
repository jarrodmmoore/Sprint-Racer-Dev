#for nodes that have scoreboard data

#AI breadcrumb
execute if entity @s[tag=AIBC] run function sprint_racer:game_logic/2/node_update/aibc/_validate

#checkpoint
execute if entity @s[tag=checkpoint] run function sprint_racer:game_logic/2/node_update/checkpoint/_validate

#finishline
execute if entity @s[tag=finishline] run function sprint_racer:game_logic/2/node_update/finishline/_validate

#itemchest
execute if entity @s[tag=itemchest] run function sprint_racer:game_logic/2/node_update/itemchest/_validate

#jumpboost
execute if entity @s[tag=jumpboost] run function sprint_racer:game_logic/2/node_update/jumpboost/_validate

#scripted sequence
execute if entity @s[tag=scriptmove] run function sprint_racer:game_logic/2/node_update/scriptmove/_validate

#teleporter
execute if entity @s[tag=teleporter] run function sprint_racer:game_logic/2/node_update/teleporter/_validate