scoreboard players set #test2 value 0
$execute store result score #test2 value run data get storage $(filename):track_data track_type 1
execute if score #test2 value matches 1..2 run scoreboard players set #success value 1

#while we're here, we'll also write down what version this track was created in (and what it may have issues with)
$execute store result score #version_created_in value run data get storage $(filename):track_data version_created_in 1
$execute store result score #version_needs_warning value run data get storage $(filename):track_data version_needs_warning 1