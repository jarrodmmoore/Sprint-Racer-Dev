#ai difficulty


#w
execute if entity @s[scores={optAIdiff=-1}] run scoreboard players set global value 1
execute if entity @s[scores={optAIdiff=0}] run scoreboard players set global value 2
execute if entity @s[scores={optAIdiff=1}] run scoreboard players set global value 3
execute if entity @s[scores={optAIdiff=2}] run scoreboard players set global value 4
execute if entity @s[scores={optAIdiff=3}] run scoreboard players set global value 5

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_20


#saved state
execute if block 1612 ~ 459 white_wool run scoreboard players set @s optAIdiff -1
execute if block 1612 ~ 459 orange_wool run scoreboard players set @s optAIdiff 0
execute if block 1612 ~ 459 magenta_wool run scoreboard players set @s optAIdiff 1
execute if block 1612 ~ 459 light_blue_wool run scoreboard players set @s optAIdiff 2
execute if block 1612 ~ 459 yellow_wool run scoreboard players set @s optAIdiff 3
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_20