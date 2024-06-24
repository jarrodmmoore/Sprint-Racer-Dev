execute if score #temp visualPitch matches ..-128 run scoreboard players add #temp visualPitch 128

execute unless score #temp visualPitch matches ..-64 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/n32
execute if score #temp visualPitch matches ..-64 rotated ~ ~-64 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/n32