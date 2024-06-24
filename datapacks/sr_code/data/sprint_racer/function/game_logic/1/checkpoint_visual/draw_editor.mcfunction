particle happy_villager ~ ~1 ~ 0 0 0 1 1
scoreboard players remove #temp visualLength 1

execute if score #temp visualLength matches 1.. positioned ^ ^ ^1 run function sprint_racer:game_logic/1/checkpoint_visual/draw_editor