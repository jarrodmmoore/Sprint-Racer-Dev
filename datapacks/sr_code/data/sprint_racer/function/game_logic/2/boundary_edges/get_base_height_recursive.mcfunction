execute if score #base_offset value matches 0 run function sprint_racer:game_logic/2/boundary_edges/spawn_base

#this is some potentially irresponsible recursion, but we know that #base_offset can never be above AND below 0 at the same time so in this case we're fine

execute if score #base_offset value matches 1.. run function sprint_racer:game_logic/2/boundary_edges/base_up_1
execute if score #base_offset value matches ..-1 run function sprint_racer:game_logic/2/boundary_edges/base_down_1