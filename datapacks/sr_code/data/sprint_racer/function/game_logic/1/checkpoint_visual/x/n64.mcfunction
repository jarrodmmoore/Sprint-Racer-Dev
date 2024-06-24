execute if score #temp visualXoffset matches ..-128 run scoreboard players add #temp visualXoffset 128

execute unless score #temp visualXoffset matches ..-64 run function sprint_racer:game_logic/1/checkpoint_visual/x/n32
execute if score #temp visualXoffset matches ..-64 positioned ~6.4 ~ ~ run function sprint_racer:game_logic/1/checkpoint_visual/x/n32