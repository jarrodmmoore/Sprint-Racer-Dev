#can't go to page -1
execute if score #trackGridPage value matches 0 run return 0
#=====

#can't go back to page 0 if it's empty
execute store result score #math value run data get storage sprint_racer:custom_track_list groups[0]
execute if score #trackGridPage value matches 1 if score #math value matches ..1 run return 0
#=====

#made it here? do it
scoreboard players remove #trackGridPage value 1

#let's figure out how many total entries this new group has.
execute store result storage sprint_racer:func_args track_group int 1 run scoreboard players get #trackGridPage value
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/count_entries_on_page with storage sprint_racer:func_args

#let's see how many multiples of 18 we can get away with for the start index
scoreboard players set #trackGridStartCustom value 1
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/go_to_last_page_of_group_recursive