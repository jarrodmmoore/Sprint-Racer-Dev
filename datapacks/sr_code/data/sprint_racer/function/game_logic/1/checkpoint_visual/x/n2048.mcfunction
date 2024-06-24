#execute if score #temp visualXoffset matches ..-4096 run scoreboard players add #temp visualXoffset 4096

execute unless score #temp visualXoffset matches ..-2048 run function sprint_racer:game_logic/1/checkpoint_visual/x/n1024
execute if score #temp visualXoffset matches ..-2048 positioned ~204.8 ~ ~ run function sprint_racer:game_logic/1/checkpoint_visual/x/n1024