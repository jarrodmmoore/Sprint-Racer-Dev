execute if score #temp visualPitch matches ..-512 run scoreboard players add #temp visualPitch 512

execute unless score #temp visualPitch matches ..-256 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/n128
execute if score #temp visualPitch matches ..-256 rotated ~ ~-256 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/n128