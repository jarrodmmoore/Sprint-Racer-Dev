scoreboard players set #success value 0
execute if block 1626 ~ 459 lime_wool run scoreboard players set #success value 1

execute if score #success value matches 1 as @a at @s run playsound minecraft:block.note_block.hat master @s
execute if score #success value matches 1 run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.save_state.deleted_1","color":"yellow"},{"translate":"sr.lobby.save_state.save_number","color":"light_purple"},{"score":{"name":"global","objective":"saveState"},"color":"light_purple"},{"translate":"sr.lobby.save_state.deleted_2","color":"light_purple"}]
execute if score #success value matches 1 run fill 1609 ~ 441 1627 ~ 460 red_stained_glass replace light_gray_terracotta
execute if score #success value matches 1 run setblock 1626 ~ 459 red_wool

execute if score #success value matches 0 run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.save_state.save_state","color":"yellow"},{"translate":"sr.lobby.save_state.already_empty","color":"red"}]
execute if score #success value matches 0 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 2 1.8
