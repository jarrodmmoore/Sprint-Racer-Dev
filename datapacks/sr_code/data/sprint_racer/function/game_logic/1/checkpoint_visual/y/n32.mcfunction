execute if score #temp visualYoffset matches ..-64 run scoreboard players add #temp visualYoffset 64

execute unless score #temp visualYoffset matches ..-32 run function sprint_racer:game_logic/1/checkpoint_visual/y/n16
execute if score #temp visualYoffset matches ..-32 positioned ~ ~3.2 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/n16