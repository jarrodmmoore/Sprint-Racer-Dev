function sprint_racer_language:_dlc_3/lobby/custom_track/coordinates_set

scoreboard players operation @e[tag=focusT] coord_x = @s mvmt_coord_x
scoreboard players operation @e[tag=focusT] coord_y = @s mvmt_coord_y
scoreboard players operation @e[tag=focusT] coord_z = @s mvmt_coord_z
execute unless entity @s[scores={mvmt_coord_x=-9999..9999,mvmt_coord_z=-9999..9999}] run function sprint_racer_language:_dlc_2/lobby/custom_track_coordinate_warning


scoreboard players set @s inputCooldown 15