execute if score #temp visualYoffset matches 128.. run scoreboard players remove #temp visualYoffset 128

execute unless score #temp visualYoffset matches 64.. run function sprint_racer:game_logic/1/checkpoint_visual/y/p32
execute if score #temp visualYoffset matches 64.. positioned ~ ~-6.4 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/p32