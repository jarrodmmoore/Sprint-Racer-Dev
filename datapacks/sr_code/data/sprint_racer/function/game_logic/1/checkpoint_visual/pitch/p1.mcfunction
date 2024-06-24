execute if score #temp visualPitch matches 2.. run scoreboard players remove #temp visualPitch 2

execute unless score #temp visualPitch matches 1.. run function sprint_racer:game_logic/1/checkpoint_visual/draw_index
execute if score #temp visualPitch matches 1.. rotated ~ ~1 run function sprint_racer:game_logic/1/checkpoint_visual/draw_index