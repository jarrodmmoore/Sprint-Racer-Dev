execute if score @s visualPitch matches 1.. run function sprint_racer:game_logic/1/checkpoint_visual/pitch/p256
execute if score @s visualPitch matches 0 run function sprint_racer:game_logic/1/checkpoint_visual/draw_index
execute if score @s visualPitch matches ..-1 run function sprint_racer:game_logic/1/checkpoint_visual/pitch/n256