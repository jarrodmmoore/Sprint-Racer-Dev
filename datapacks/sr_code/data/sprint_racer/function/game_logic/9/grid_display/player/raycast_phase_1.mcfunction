scoreboard players remove #recursions value 1

#if we hit concrete, switch to phase 2
execute if block ~ ~ ~ #sprint_racer:track_select_raycast_goal positioned ^ ^ ^-1 run return run function sprint_racer:game_logic/9/grid_display/player/raycast_phase_2
#=====

#keep checking forward. stop if we hit anything that's not air
#note: you can stop this raycast using structure voids
execute if score #recursions value matches 1.. if block ~ ~ ~ #sprint_racer:track_select_raycast_pass positioned ^ ^ ^1 run function sprint_racer:game_logic/9/grid_display/player/raycast_phase_1