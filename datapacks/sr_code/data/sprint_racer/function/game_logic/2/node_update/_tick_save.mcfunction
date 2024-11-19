scoreboard players add #nodeSaveTime value 1
execute if score #nodeSaveTime value matches 8.. as @e[type=marker,tag=node] run function sprint_racer:game_logic/2/node_update/index_type_save
execute if score #nodeSaveTime value matches 8.. run scoreboard players set #nodeSaveTime value 0