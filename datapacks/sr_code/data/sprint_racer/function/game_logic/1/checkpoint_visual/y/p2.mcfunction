execute if score #temp visualYoffset matches 4.. run scoreboard players remove #temp visualYoffset 4

execute unless score #temp visualYoffset matches 2.. run function sprint_racer:game_logic/1/checkpoint_visual/y/p1
execute if score #temp visualYoffset matches 2.. positioned ~ ~-.2 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/p1