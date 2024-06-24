execute if score #temp visualPitch matches 256.. run scoreboard players remove #temp visualPitch 256

execute unless score #temp visualPitch matches 128.. run function sprint_racer:game_logic/1/checkpoint_visual/pitch/p64
execute if score #temp visualPitch matches 128.. rotated ~ ~128 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/p64