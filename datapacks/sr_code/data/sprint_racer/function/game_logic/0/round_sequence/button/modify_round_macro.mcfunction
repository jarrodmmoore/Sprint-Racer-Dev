#read from array
$execute store result score #math value run data get storage sprint_racer:round_sequence custom[$(num1)] 1

#cycle between the options and write back into the array
scoreboard players add #math value 1
execute if score #math value matches 5.. run scoreboard players set #math value 1
$execute store result storage sprint_racer:round_sequence custom[$(num1)] int 1 run scoreboard players get #math value