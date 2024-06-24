#battle game type


#w
execute if entity @s[tag=!randomPresetB,scores={gamemodePresetB=1}] run scoreboard players set global value 1
execute if entity @s[tag=!randomPresetB,scores={gamemodePresetB=2}] run scoreboard players set global value 2
execute if entity @s[tag=!randomPresetB,scores={gamemodePresetB=3}] run scoreboard players set global value 3
execute if entity @s[tag=randomPresetB] run scoreboard players set global value 4

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_28


#saved state
execute if block 1614 ~ 458 white_wool run scoreboard players set global value 1
execute if block 1614 ~ 458 orange_wool run scoreboard players set global value 2
execute if block 1614 ~ 458 magenta_wool run scoreboard players set global value 3
execute if block 1614 ~ 458 light_blue_wool run scoreboard players set global value 4
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_28