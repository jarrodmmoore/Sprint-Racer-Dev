#don't have a proper y range? get one.
execute unless entity @s[tag=checkHasYRange] run function sprint_racer:game_logic/2/checkpoint_menu_edit/get_default_y_range

#summon an area_effect_cloud for each edge of the box
execute if entity @s[tag=checkAnyY] run function sprint_racer:game_logic/2/boundary_edges/spawn_horizontal
execute if entity @s[tag=finAnyY] run function sprint_racer:game_logic/2/boundary_edges/spawn_horizontal
scoreboard players operation #base_offset value = @s check_y_min
scoreboard players operation #top_offset value = @s check_y_max
scoreboard players operation #box_height value = #top_offset value
scoreboard players operation #box_height value -= #base_offset value

#don't spawn anything if height is weird
execute unless score #box_height value matches 0..100 run return run execute if entity @s[tag=!checkAnyY,tag=!finAnyY] run function sprint_racer:game_logic/2/boundary_edges/spawn_horizontal

#spawn height
execute if entity @s[tag=!checkAnyY,tag=!finAnyY] run function sprint_racer:game_logic/2/boundary_edges/get_base_height_recursive
execute if entity @s[tag=!checkAnyY,tag=!finAnyY] run function sprint_racer:game_logic/2/boundary_edges/get_top_height_recursive
