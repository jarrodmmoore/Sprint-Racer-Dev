execute if score #temp visualZoffset matches 2048.. run scoreboard players remove #temp visualZoffset 2048

execute unless score #temp visualZoffset matches 1024.. run function sprint_racer:game_logic/1/checkpoint_visual/z/p512
execute if score #temp visualZoffset matches 1024.. positioned ~ ~ ~-102.4 run function sprint_racer:game_logic/1/checkpoint_visual/z/p512