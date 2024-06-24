execute if score #temp visualZoffset matches 128.. run scoreboard players remove #temp visualZoffset 128

execute unless score #temp visualZoffset matches 64.. run function sprint_racer:game_logic/1/checkpoint_visual/z/p32
execute if score #temp visualZoffset matches 64.. positioned ~ ~ ~-6.4 run function sprint_racer:game_logic/1/checkpoint_visual/z/p32