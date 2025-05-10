#scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] wmCustomNum 1

#before moving, let's figure out how many total entries the current group has.
execute store result storage sprint_racer:func_args track_group int 1 run scoreboard players get #trackGridPage value
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/count_entries_on_page with storage sprint_racer:func_args

#if this group has more than 18 unseen entries, scroll up it instead of immediately going to the next group
scoreboard players set #math value 1
scoreboard players operation #math value -= #trackGridStartCustom value
execute if score #math value matches ..-18 run scoreboard players remove #trackGridStartCustom value 18

#otherwise go to the next page (if it exists)
execute unless score #math value matches ..-18 run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/try_previous_page


#send it
function sprint_racer:game_logic/0/worldmap_extra/custom/keep_in_bounds

#feedback for pressing the button
function sprint_racer_language:_dlc_1/lobby/track_selector_buttons/previous