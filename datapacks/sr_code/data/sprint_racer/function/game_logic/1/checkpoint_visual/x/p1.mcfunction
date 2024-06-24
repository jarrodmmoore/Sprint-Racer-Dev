execute if score #temp visualXoffset matches 2.. run scoreboard players remove #temp visualXoffset 2

execute unless score #temp visualXoffset matches 1.. run function sprint_racer:game_logic/1/checkpoint_visual/y/_pos_or_neg
execute if score #temp visualXoffset matches 1.. positioned ~-.1 ~ ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/_pos_or_neg