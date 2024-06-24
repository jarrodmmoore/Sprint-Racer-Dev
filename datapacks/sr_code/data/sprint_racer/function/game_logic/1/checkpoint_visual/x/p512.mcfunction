execute if score #temp visualXoffset matches 1024.. run scoreboard players remove #temp visualXoffset 1024

execute unless score #temp visualXoffset matches 512.. run function sprint_racer:game_logic/1/checkpoint_visual/x/p256
execute if score #temp visualXoffset matches 512.. positioned ~-51.2 ~ ~ run function sprint_racer:game_logic/1/checkpoint_visual/x/p256