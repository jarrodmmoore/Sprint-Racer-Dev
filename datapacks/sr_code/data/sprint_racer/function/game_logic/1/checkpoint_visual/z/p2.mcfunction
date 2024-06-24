execute if score #temp visualZoffset matches 4.. run scoreboard players remove #temp visualZoffset 4

execute unless score #temp visualZoffset matches 2.. run function sprint_racer:game_logic/1/checkpoint_visual/z/p1
execute if score #temp visualZoffset matches 2.. positioned ~ ~ ~-.2 run function sprint_racer:game_logic/1/checkpoint_visual/z/p1