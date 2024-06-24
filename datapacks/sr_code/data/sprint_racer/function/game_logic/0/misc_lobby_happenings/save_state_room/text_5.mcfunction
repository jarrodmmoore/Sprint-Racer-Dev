#track select method

#w
execute if entity @s[tag=optVote] run scoreboard players set global value 1
execute if entity @s[tag=optRandom] run scoreboard players set global value 2
execute if entity @s[tag=optInOrder] run scoreboard players set global value 3
execute if entity @s[tag=optChoose] run scoreboard players set global value 4
execute if entity @s[tag=optRoulette] run scoreboard players set global value 5

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_5


#saved state
execute if block 1617 ~ 460 white_wool run scoreboard players set global value 1
execute if block 1617 ~ 460 orange_wool run scoreboard players set global value 2
execute if block 1617 ~ 460 magenta_wool run scoreboard players set global value 3
execute if block 1617 ~ 460 light_blue_wool run scoreboard players set global value 4
execute if block 1617 ~ 460 yellow_wool run scoreboard players set global value 5
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_5