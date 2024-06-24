execute if score #temp visualZoffset matches ..-1024 run scoreboard players add #temp visualZoffset 1024

execute unless score #temp visualZoffset matches ..-512 run function sprint_racer:game_logic/1/checkpoint_visual/z/n256
execute if score #temp visualZoffset matches ..-512 positioned ~ ~ ~51.2 run function sprint_racer:game_logic/1/checkpoint_visual/z/n256