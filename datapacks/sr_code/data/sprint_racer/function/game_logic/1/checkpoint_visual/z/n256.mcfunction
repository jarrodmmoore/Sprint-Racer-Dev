execute if score #temp visualZoffset matches ..-512 run scoreboard players add #temp visualZoffset 512

execute unless score #temp visualZoffset matches ..-256 run function sprint_racer:game_logic/1/checkpoint_visual/z/n128
execute if score #temp visualZoffset matches ..-256 positioned ~ ~ ~25.6 run function sprint_racer:game_logic/1/checkpoint_visual/z/n128