execute if block ~ ~ ~ light_gray_terracotta run scoreboard players set #current_icon value 1
execute if block ~ ~ ~ orange_concrete run scoreboard players set #current_icon value 2
execute if block ~ ~ ~ magenta_concrete run scoreboard players set #current_icon value 3
execute if block ~ ~ ~ light_blue_concrete run scoreboard players set #current_icon value 4
execute if block ~ ~ ~ yellow_concrete run scoreboard players set #current_icon value 5
execute if block ~ ~ ~ lime_concrete run scoreboard players set #current_icon value 6
execute if block ~ ~ ~ pink_concrete run scoreboard players set #current_icon value 7
execute if block ~ ~ ~ gray_concrete run scoreboard players set #current_icon value 8
execute if block ~ ~ ~ light_gray_concrete run scoreboard players set #current_icon value 9
execute if block ~ ~ ~ cyan_concrete run scoreboard players set #current_icon value 10

execute if score #current_icon value matches 1 run setblock ~ ~ ~ orange_concrete
execute if score #current_icon value matches 2 run setblock ~ ~ ~ magenta_concrete
execute if score #current_icon value matches 3 run setblock ~ ~ ~ light_blue_concrete
execute if score #current_icon value matches 4 run setblock ~ ~ ~ yellow_concrete
execute if score #current_icon value matches 5 run setblock ~ ~ ~ lime_concrete
execute if score #current_icon value matches 6 run setblock ~ ~ ~ pink_concrete
execute if score #current_icon value matches 7 run setblock ~ ~ ~ gray_concrete
execute if score #current_icon value matches 8 run setblock ~ ~ ~ light_gray_concrete
execute if score #current_icon value matches 9 run setblock ~ ~ ~ cyan_concrete
execute if score #current_icon value matches 10 run setblock ~ ~ ~ light_gray_terracotta