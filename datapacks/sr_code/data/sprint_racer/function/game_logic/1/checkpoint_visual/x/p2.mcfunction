execute if score #temp visualXoffset matches 4.. run scoreboard players remove #temp visualXoffset 4

execute unless score #temp visualXoffset matches 2.. run function sprint_racer:game_logic/1/checkpoint_visual/x/p1
execute if score #temp visualXoffset matches 2.. positioned ~-.2 ~ ~ run function sprint_racer:game_logic/1/checkpoint_visual/x/p1