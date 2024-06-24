execute if score #temp visualYoffset matches ..-2048 run scoreboard players add #temp visualYoffset 2048

execute unless score #temp visualYoffset matches ..-1024 run function sprint_racer:game_logic/1/checkpoint_visual/y/n512
execute if score #temp visualYoffset matches ..-1024 positioned ~ ~102.4 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/n512