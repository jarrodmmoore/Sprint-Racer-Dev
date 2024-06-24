scoreboard players add #drawTime value 1
execute if score #halftick value matches 1 run scoreboard players add #drawTime value 1

execute if score #drawTime value matches 20.. as @e[tag=hasVisualLine,type=marker,tag=checkpoint] at @s if score @s nodeState matches 1.. run function sprint_racer:game_logic/1/checkpoint_visual/start_index
execute if score #drawTime value matches 20.. run scoreboard players set #drawTime value 0