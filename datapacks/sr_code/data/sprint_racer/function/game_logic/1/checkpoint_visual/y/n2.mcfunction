execute if score #temp visualYoffset matches ..-4 run scoreboard players add #temp visualYoffset 4

execute unless score #temp visualYoffset matches ..-2 run function sprint_racer:game_logic/1/checkpoint_visual/y/n1
execute if score #temp visualYoffset matches ..-2 positioned ~ ~.2 ~ run function sprint_racer:game_logic/1/checkpoint_visual/y/n1