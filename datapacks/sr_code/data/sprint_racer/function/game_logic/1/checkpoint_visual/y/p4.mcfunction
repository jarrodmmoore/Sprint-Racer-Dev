execute if score #temp visualYoffset matches 8.. run scoreboard players remove #temp visualYoffset 8

execute unless score #temp visualYoffset matches 4.. run function sprint_racer:game_logic/1/checkpoint_visual/y/p2
execute if score #temp visualYoffset matches 4.. positioned ~ ~-.4 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/p2