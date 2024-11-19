scoreboard players add #nodeUpdateTime value 1
execute if score #nodeUpdateTime value matches 13.. as @e[type=marker,tag=node] run function sprint_racer:game_logic/2/node_update/index_type
execute if score #nodeUpdateTime value matches 13.. run scoreboard players set #nodeUpdateTime value 0