execute if score #temp visualPitch matches ..-16 run scoreboard players add #temp visualPitch 16

execute unless score #temp visualPitch matches ..-8 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/n4
execute if score #temp visualPitch matches ..-8 rotated ~ ~-8 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/n4