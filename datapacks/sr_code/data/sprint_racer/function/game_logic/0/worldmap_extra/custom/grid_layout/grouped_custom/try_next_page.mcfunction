#check if next page exists
$execute store result score #success value run execute if data storage sprint_racer:custom_track_list groups[$(track_group)]
execute if score #success value matches 1.. run scoreboard players add #trackGridPage value 1
execute if score #success value matches 1.. run scoreboard players set #trackGridStartCustom value 1