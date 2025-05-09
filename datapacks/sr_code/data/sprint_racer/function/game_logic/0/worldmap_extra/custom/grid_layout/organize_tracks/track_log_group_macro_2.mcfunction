#this will only work if it's unique

$execute store result score #success value run tag 00000065-0000-038d-0000-022b00000045 add $(track_group)
$execute if score #success value matches 1.. run data modify storage sprint_racer:custom_track_list groups append value ["$(track_group)"]