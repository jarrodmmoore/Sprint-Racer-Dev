#items banned


#w
scoreboard players set global value 1
scoreboard players set global math 0
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=capsuleBan] run scoreboard players add global math 1

execute positioned 1615 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_1


#saved state
scoreboard players set global value 1
scoreboard players set global math 0
execute if block 1618 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1617 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1616 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1615 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1614 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1613 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1612 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1611 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1610 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1609 ~ 443 red_wool run scoreboard players add global math 1
execute if block 1618 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1617 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1616 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1615 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1614 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1613 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1612 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1611 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1610 ~ 442 red_wool run scoreboard players add global math 1
execute if block 1609 ~ 442 red_wool run scoreboard players add global math 1
execute unless block 1626 ~ 459 lime_wool run scoreboard players set global value 0

execute positioned 1605 89 458 positioned ~.5 ~ ~.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/text_show_1