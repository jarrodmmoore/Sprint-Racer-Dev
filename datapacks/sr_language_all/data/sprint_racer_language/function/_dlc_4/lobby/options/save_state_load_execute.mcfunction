scoreboard players set #success value 0
execute if block 1626 ~ 459 lime_wool run scoreboard players set #success value 1

execute if score #success value matches 1 as @a at @s run playsound minecraft:block.note_block.hat master @s
execute if score #success value matches 1 run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.save_state.loaded_1",color:"yellow"},{translate:"sr.lobby.save_state.save_number",color:"light_purple"},{score:{name:"global",objective:"saveState"},color:"light_purple"},{translate:"sr.lobby.save_state.loaded_2",color:"light_purple"}]
execute if score #success value matches 1 run function sprint_racer:game_logic/0/save_state/load_block_state

execute if score #success value matches 0 run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.save_state.save_state",color:"yellow"},{translate:"sr.lobby.save_state.cannot_load_empty",color:"red"}]
execute if score #success value matches 0 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 2 1.8
