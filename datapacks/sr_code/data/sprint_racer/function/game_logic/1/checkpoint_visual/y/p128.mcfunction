execute if score #temp visualYoffset matches 256.. run scoreboard players remove #temp visualYoffset 256

execute unless score #temp visualYoffset matches 128.. run function sprint_racer:game_logic/1/checkpoint_visual/y/p64
execute if score #temp visualYoffset matches 128.. positioned ~ ~-12.8 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/p64