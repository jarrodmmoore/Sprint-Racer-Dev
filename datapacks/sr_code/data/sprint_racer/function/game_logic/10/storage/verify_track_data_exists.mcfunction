scoreboard players set #test2 value 0
$execute store result score #test2 value run data get storage $(filename):track_data track_type 1
execute if score #test2 value matches 1..2 run scoreboard players set #success value 1