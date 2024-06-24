#battle ai count


#w
execute if entity @s[tag=BAIautocount] run scoreboard players set global value 1
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=1}] run scoreboard players set global value 2
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=2}] run scoreboard players set global value 3
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=3}] run scoreboard players set global value 4
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=4}] run scoreboard players set global value 5
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=5}] run scoreboard players set global value 6
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=6}] run scoreboard players set global value 7
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=7}] run scoreboard players set global value 8
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=8}] run scoreboard players set global value 9
execute if entity @s[tag=!BAIautocount,scores={optBAIcount=9}] run scoreboard players set global value 10

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_19


#saved state
execute if block 1613 ~ 459 white_wool run scoreboard players set global value 1
execute if block 1613 ~ 459 orange_wool run scoreboard players set global value 2
execute if block 1613 ~ 459 magenta_wool run scoreboard players set global value 3
execute if block 1613 ~ 459 light_blue_wool run scoreboard players set global value 4
execute if block 1613 ~ 459 yellow_wool run scoreboard players set global value 5
execute if block 1613 ~ 459 lime_wool run scoreboard players set global value 6
execute if block 1613 ~ 459 pink_wool run scoreboard players set global value 7
execute if block 1613 ~ 459 gray_wool run scoreboard players set global value 8
execute if block 1613 ~ 459 light_gray_wool run scoreboard players set global value 9
execute if block 1613 ~ 459 cyan_wool run scoreboard players set global value 10
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_19