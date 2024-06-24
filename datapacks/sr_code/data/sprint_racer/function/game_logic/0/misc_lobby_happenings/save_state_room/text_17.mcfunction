#race ai count


#w
execute if entity @s[tag=RAIautocount] run scoreboard players set global value 1
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=1}] run scoreboard players set global value 2
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=2}] run scoreboard players set global value 3
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=3}] run scoreboard players set global value 4
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=4}] run scoreboard players set global value 5
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=5}] run scoreboard players set global value 6
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=6}] run scoreboard players set global value 7
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=7}] run scoreboard players set global value 8
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=8}] run scoreboard players set global value 9
execute if entity @s[tag=!RAIautocount,scores={optRAIcount=9}] run scoreboard players set global value 10

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_17


#saved state
execute if block 1615 ~ 459 white_wool run scoreboard players set global value 1
execute if block 1615 ~ 459 orange_wool run scoreboard players set global value 2
execute if block 1615 ~ 459 magenta_wool run scoreboard players set global value 3
execute if block 1615 ~ 459 light_blue_wool run scoreboard players set global value 4
execute if block 1615 ~ 459 yellow_wool run scoreboard players set global value 5
execute if block 1615 ~ 459 lime_wool run scoreboard players set global value 6
execute if block 1615 ~ 459 pink_wool run scoreboard players set global value 7
execute if block 1615 ~ 459 gray_wool run scoreboard players set global value 8
execute if block 1615 ~ 459 light_gray_wool run scoreboard players set global value 9
execute if block 1615 ~ 459 cyan_wool run scoreboard players set global value 10
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_17