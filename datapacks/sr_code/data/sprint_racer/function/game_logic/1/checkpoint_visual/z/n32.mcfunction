execute if score #temp visualZoffset matches ..-64 run scoreboard players add #temp visualZoffset 64

execute unless score #temp visualZoffset matches ..-32 run function sprint_racer:game_logic/1/checkpoint_visual/z/n16
execute if score #temp visualZoffset matches ..-32 positioned ~ ~ ~3.2 run function sprint_racer:game_logic/1/checkpoint_visual/z/n16