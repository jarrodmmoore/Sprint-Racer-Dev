#battle item preset


#w
scoreboard players operation global value = @s itemPresetB

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_10


#saved state
execute if block 1612 ~ 460 white_wool run scoreboard players set global value 1
execute if block 1612 ~ 460 orange_wool run scoreboard players set global value 2
execute if block 1612 ~ 460 magenta_wool run scoreboard players set global value 3
execute if block 1612 ~ 460 light_blue_wool run scoreboard players set global value 4
execute if block 1612 ~ 460 yellow_wool run scoreboard players set global value 5
execute if block 1612 ~ 460 lime_wool run scoreboard players set global value 6
execute if block 1612 ~ 460 pink_wool run scoreboard players set global value 7
execute if block 1612 ~ 460 gray_wool run scoreboard players set global value 8
execute if block 1612 ~ 460 light_gray_wool run scoreboard players set global value 9
execute if block 1612 ~ 460 cyan_wool run scoreboard players set global value 10
execute if block 1612 ~ 460 purple_wool run scoreboard players set global value 11
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_10