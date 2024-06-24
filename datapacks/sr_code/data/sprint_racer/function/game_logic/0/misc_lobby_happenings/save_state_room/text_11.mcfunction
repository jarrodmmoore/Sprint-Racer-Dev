#difficulty ramp-up


#w
execute if entity @s[scores={difficultyRamp=1}] run scoreboard players set global value 1
execute unless entity @s[scores={difficultyRamp=1}] run scoreboard players set global value 2

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_11


#saved state
execute if block 1611 ~ 460 orange_wool run scoreboard players set global value 1
execute if block 1611 ~ 460 white_wool run scoreboard players set global value 2
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_11