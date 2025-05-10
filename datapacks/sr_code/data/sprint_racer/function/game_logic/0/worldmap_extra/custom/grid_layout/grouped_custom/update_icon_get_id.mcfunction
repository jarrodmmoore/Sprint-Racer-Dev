#check if data exists
$execute store result score #success value run execute if data storage sprint_racer:custom_track_list groups[$(track_group)][$(i)]

#store what this is
$execute if score #success value matches 1.. store result score #trackGridFetchID value run data get storage sprint_racer:custom_track_list groups[$(track_group)][$(i)]
execute if score #success value matches 0 run scoreboard players set #trackGridFetchID value -1