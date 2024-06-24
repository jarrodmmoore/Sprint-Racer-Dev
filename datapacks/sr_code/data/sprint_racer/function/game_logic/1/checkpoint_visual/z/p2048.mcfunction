#execute if score #temp visualZoffset matches 4096.. run scoreboard players remove #temp visualZoffset 4096

execute unless score #temp visualZoffset matches 2048.. run function sprint_racer:game_logic/1/checkpoint_visual/z/p1024
execute if score #temp visualZoffset matches 2048.. positioned ~ ~ ~-204.8 run function sprint_racer:game_logic/1/checkpoint_visual/z/p1024