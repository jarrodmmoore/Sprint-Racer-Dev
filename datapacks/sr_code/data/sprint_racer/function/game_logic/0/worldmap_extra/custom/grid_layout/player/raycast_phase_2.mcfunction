scoreboard players remove #recursions value 1

#hit!
execute if block ~ ~ ~ #sprint_racer:track_select_raycast_goal run return run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/player/raycast_hit
#=====

#inch forward until we kiss the surface of the block
execute if score #recursions value matches -10.. if block ~ ~ ~ #sprint_racer:track_select_raycast_pass positioned ^ ^ ^.1 run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/player/raycast_phase_2