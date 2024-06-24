#lobby time


#w
execute if entity @s[scores={defLobbyTime=..15}] run scoreboard players set global value 1
execute if entity @s[scores={defLobbyTime=16..20}] run scoreboard players set global value 2
execute if entity @s[scores={defLobbyTime=21..25}] run scoreboard players set global value 3
execute if entity @s[scores={defLobbyTime=26..30}] run scoreboard players set global value 4
execute if entity @s[scores={defLobbyTime=31..35}] run scoreboard players set global value 5
execute if entity @s[scores={defLobbyTime=36..40}] run scoreboard players set global value 6
execute if entity @s[scores={defLobbyTime=41..45}] run scoreboard players set global value 7
execute if entity @s[scores={defLobbyTime=46..50}] run scoreboard players set global value 8
execute if entity @s[scores={defLobbyTime=51..55}] run scoreboard players set global value 9
execute if entity @s[scores={defLobbyTime=56..}] run scoreboard players set global value 10

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_23


#saved state
execute if block 1609 ~ 459 white_wool run scoreboard players set global value 1
execute if block 1609 ~ 459 orange_wool run scoreboard players set global value 2
execute if block 1609 ~ 459 magenta_wool run scoreboard players set global value 3
execute if block 1609 ~ 459 light_blue_wool run scoreboard players set global value 4
execute if block 1609 ~ 459 yellow_wool run scoreboard players set global value 5
execute if block 1609 ~ 459 lime_wool run scoreboard players set global value 6
execute if block 1609 ~ 459 pink_wool run scoreboard players set global value 7
execute if block 1609 ~ 459 gray_wool run scoreboard players set global value 8
execute if block 1609 ~ 459 light_gray_wool run scoreboard players set global value 8
execute if block 1609 ~ 459 cyan_wool run scoreboard players set global value 10
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_23