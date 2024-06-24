execute if score #top_offset value matches 0 run function sprint_racer:game_logic/2/boundary_edges/spawn_horizontal

#this is some potentially irresponsible recursion, but we know that #top_offset can never be above AND below 0 at the same time so in this case we're fine

execute if score #top_offset value matches 1.. run function sprint_racer:game_logic/2/boundary_edges/top_up_1
execute if score #top_offset value matches ..-1 run function sprint_racer:game_logic/2/boundary_edges/top_down_1