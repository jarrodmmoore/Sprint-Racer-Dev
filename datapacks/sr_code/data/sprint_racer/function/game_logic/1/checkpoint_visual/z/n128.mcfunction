execute if score #temp visualZoffset matches ..-256 run scoreboard players add #temp visualZoffset 256

execute unless score #temp visualZoffset matches ..-128 run function sprint_racer:game_logic/1/checkpoint_visual/z/n64
execute if score #temp visualZoffset matches ..-128 positioned ~ ~ ~12.8 run function sprint_racer:game_logic/1/checkpoint_visual/z/n64