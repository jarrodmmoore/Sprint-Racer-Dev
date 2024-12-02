scoreboard players add #customTagLine value 1

#is this storage index already being used? if so, try the next number up
scoreboard players set #test value 0
execute as @e[type=armor_stand,tag=customtrack] if score @s customTagLine = #customTagLine value run scoreboard players set #test value 1
execute if score #test value matches 1 run function sprint_racer:game_logic/10/assign_custom_tagline_find_recursive