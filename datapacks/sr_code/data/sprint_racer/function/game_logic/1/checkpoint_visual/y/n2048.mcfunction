#execute if score #temp visualYoffset matches ..-4096 run scoreboard players add #temp visualYoffset 4096

execute unless score #temp visualYoffset matches ..-2048 run function sprint_racer:game_logic/1/checkpoint_visual/y/n1024
execute if score #temp visualYoffset matches ..-2048 positioned ~ ~204.8 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/n1024