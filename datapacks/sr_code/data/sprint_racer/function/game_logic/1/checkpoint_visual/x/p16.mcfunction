execute if score #temp visualXoffset matches 32.. run scoreboard players remove #temp visualXoffset 32

execute unless score #temp visualXoffset matches 16.. run function sprint_racer:game_logic/1/checkpoint_visual/x/p8
execute if score #temp visualXoffset matches 16.. positioned ~-1.6 ~ ~ run function sprint_racer:game_logic/1/checkpoint_visual/x/p8