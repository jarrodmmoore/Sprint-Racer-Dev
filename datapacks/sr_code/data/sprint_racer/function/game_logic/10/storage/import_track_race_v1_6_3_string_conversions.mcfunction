$data modify entity @s CustomName set value [$(convert_track_name)]
$data modify storage sprint_racer:custom_track_storage_$(temp_id) tagline set value [$(convert_tagline)]

#this was run successfully
scoreboard players set #success value 1