scoreboard players set #success value 1

execute if score #success value matches 1 as @a at @s run playsound minecraft:block.note_block.hat master @s
execute if score #success value matches 1 run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.save_state.saved_1",color:"yellow"},{translate:"sr.lobby.save_state.save_number",color:"light_purple"},{score:{name:"global",objective:"saveState"},color:"light_purple"},{translate:"sr.lobby.save_state.saved_2",color:"light_purple"}]
execute if score #success value matches 1 run function sprint_racer:game_logic/0/save_state/save_current
execute if score #success value matches 1 run setblock 1626 ~ 459 lime_wool

execute if score #success value matches 0 run tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.save_state.save_state",color:"yellow"},{translate:"sr.lobby.save_state.failed_to_load",color:"red"}]
execute if score #success value matches 0 as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 2 1.8
