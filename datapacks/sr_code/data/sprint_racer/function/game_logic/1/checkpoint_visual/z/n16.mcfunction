execute if score #temp visualZoffset matches ..-32 run scoreboard players add #temp visualZoffset 32

execute unless score #temp visualZoffset matches ..-16 run function sprint_racer:game_logic/1/checkpoint_visual/z/n8
execute if score #temp visualZoffset matches ..-16 positioned ~ ~ ~1.6 run function sprint_racer:game_logic/1/checkpoint_visual/z/n8