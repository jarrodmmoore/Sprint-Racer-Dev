execute if score #temp visualXoffset matches ..-512 run scoreboard players add #temp visualXoffset 512

execute unless score #temp visualXoffset matches ..-256 run function sprint_racer:game_logic/1/checkpoint_visual/x/n128
execute if score #temp visualXoffset matches ..-256 positioned ~25.6 ~ ~ run function sprint_racer:game_logic/1/checkpoint_visual/x/n128