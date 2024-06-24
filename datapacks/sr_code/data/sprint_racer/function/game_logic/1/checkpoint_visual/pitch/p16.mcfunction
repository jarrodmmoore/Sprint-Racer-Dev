execute if score #temp visualPitch matches 32.. run scoreboard players remove #temp visualPitch 32

execute unless score #temp visualPitch matches 16.. run function sprint_racer:game_logic/1/checkpoint_visual/pitch/p8
execute if score #temp visualPitch matches 16.. rotated ~ ~16 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/p8