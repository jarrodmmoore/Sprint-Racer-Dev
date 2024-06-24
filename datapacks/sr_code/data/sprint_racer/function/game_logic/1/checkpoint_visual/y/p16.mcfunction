execute if score #temp visualYoffset matches 32.. run scoreboard players remove #temp visualYoffset 32

execute unless score #temp visualYoffset matches 16.. run function sprint_racer:game_logic/1/checkpoint_visual/y/p8
execute if score #temp visualYoffset matches 16.. positioned ~ ~-1.6 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/p8