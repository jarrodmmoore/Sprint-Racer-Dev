execute if score #trackGridMode value matches 1 store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTrackID
execute if score #trackGridMode value matches 2 store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTrackBID
#add the id into the list
$data modify storage sprint_racer:custom_track_list groups[$(i)] append from storage sprint_racer:func_args id

#we're sorted
tag @s remove groupMatched
tag @s add groupSorted