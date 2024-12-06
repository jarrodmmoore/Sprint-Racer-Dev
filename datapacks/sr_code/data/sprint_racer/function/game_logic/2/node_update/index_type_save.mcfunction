#for nodes that have scoreboard data

#AI breadcrumb
execute if entity @s[tag=AIBC] if score @s AIBC_id matches 1.. if score @s AIBC_dir1 matches -2147483648..2147483647 run return run function sprint_racer:game_logic/2/node_update/aibc/save_data

#checkpoint
execute if entity @s[tag=checkpoint] if score @s check matches 1.. if score @s check_y_min matches -2147483648..2147483647 run return run function sprint_racer:game_logic/2/node_update/checkpoint/save_data

#finishline
execute if entity @s[tag=finishline] if score @s nCheck matches 1.. if score @s check_y_min matches -2147483648..2147483647 run return run function sprint_racer:game_logic/2/node_update/finishline/save_data

#itemchest
execute if entity @s[tag=itemchest] if score @s itemchestSeedA matches -2147483648..2147483647 if score @s itemchestSeedR matches -2147483648..2147483647 if score @s playerRequire matches -2147483648..2147483647 run return run function sprint_racer:game_logic/2/node_update/itemchest/save_data

#jumpboost
execute if entity @s[tag=jumpboost] if score @s jump matches 1.. run return run function sprint_racer:game_logic/2/node_update/jumpboost/save_data

#scripted sequence
execute if entity @s[tag=scriptmove] if score @s scriptMove matches 1.. run return run function sprint_racer:game_logic/2/node_update/scriptmove/save_data

#teleporter
execute if entity @s[tag=teleporter] if score @s teleport matches 1.. run return run function sprint_racer:game_logic/2/node_update/teleporter/save_data