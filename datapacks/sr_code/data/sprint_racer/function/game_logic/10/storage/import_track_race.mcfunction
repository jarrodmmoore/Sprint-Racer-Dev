#executed by the new custom track that's being created
#with storage $(filename):track_data
#temp_id is our ticket to accessing our assigned custom_track_storage_X


#apply storage data to ourselves

#RACE IMPORT

#--track name
$data modify entity @s CustomName set from storage $(file_name):track_data track_name
#--use tagline?
$scoreboard players set #read value $(use_tag_line)
execute if score #read value matches 0 run tag @s remove useTagLine
execute if score #read value matches 1 run tag @s add useTagLine
#--tagline string
$data modify storage sprint_racer:custom_track_storage_$(temp_id) tagline set from storage $(file_name):track_data tagline
#--coord xyz
$scoreboard players set @s coord_x $(coord_x)
$scoreboard players set @s coord_y $(coord_y)
$scoreboard players set @s coord_z $(coord_z)
#--laps
$scoreboard players set @s lap $(laps)
#--checkpoints
$scoreboard players set @s check $(checkpoints)
#--support ai
$scoreboard players set #read value $(supports_ai)
execute if score #read value matches 0 run tag @s add noAItrack
execute if score #read value matches 1 run tag @s remove noAItrack
#--time limit
$scoreboard players set @s timeRemaining $(time_limit)
#--difficulty
tag @s remove trackNovice
tag @s remove trackIntermed
tag @s remove trackExpert
tag @s remove trackMaster
$tag @s add $(difficulty)
#--gauntlet track
$scoreboard players set #read value $(gauntlet_track)
execute if score #read value matches 0 run tag @s remove gauntletTrack
execute if score #read value matches 1 run tag @s add gauntletTrack
#--custom function index
$scoreboard players set @s customCodePath $(custom_code_index)
#--custom function macro path?
$scoreboard players set #read value $(use_macro_code_path)
execute if score #read value matches 0 run tag @s remove usingMacroCodePath
execute if score #read value matches 1 run tag @s add usingMacroCodePath
#--function_namespace
$data modify storage sprint_racer:custom_track_storage_$(temp_id) function_namespace set from storage $(file_name):track_data function_namespace
#--function_path
$data modify storage sprint_racer:custom_track_storage_$(temp_id) function_path set from storage $(file_name):track_data function_path
#--time
$scoreboard players set @s customTrackTime $(time_of_day)
#--weather
$scoreboard players set @s customTWeather $(weather)
#--daylight cycle
$scoreboard players set #read value $(daylight_cycle)
execute if score #read value matches 0 run tag @s remove daylightCycle
execute if score #read value matches 1 run tag @s add daylightCycle
#--night vision
$scoreboard players set #read value $(night_vision)
execute if score #read value matches 0 run tag @s remove nightVision
execute if score #read value matches 1 run tag @s add nightVision
#--music
$scoreboard players set @s BGMtrack $(music_track)
#--start countdown
$scoreboard players set @s startType $(start_countdown)
#--preview image index
$scoreboard players set @s customPreview $(custom_preview_index)
#--preview image use macro?
$scoreboard players set #read value $(use_macro_preview_image)
execute if score #read value matches 0 run tag @s remove usingMacroPreview
execute if score #read value matches 1 run tag @s add usingMacroPreview
#--preview image macro path string
$data modify storage sprint_racer:custom_track_storage_$(temp_id) preview_image set from storage $(file_name):track_data preview_image
#tag if we have custom preview
tag @s remove customPreview
execute unless score @s customPreview matches 11000 run tag @s add customPreview
execute if entity @s[tag=usingMacroPreview] run tag @s add customPreview
#--overhead map?
$scoreboard players set #read value $(use_overhead_map)
execute if score #read value matches 0 run tag @s remove useOverheadMap
execute if score #read value matches 1 run tag @s add useOverheadMap
#--overhead_map stored value
$data modify storage sprint_racer:custom_track_storage_$(temp_id) overhead_map set from storage $(file_name):track_data overhead_map
#--kill plane?
$scoreboard players set #read value $(use_kill_plane)
execute if score #read value matches 0 run tag @s remove killPlane
execute if score #read value matches 1 run tag @s add killPlane
#--kill plane string
$data modify storage sprint_racer:custom_track_storage_$(temp_id) kill_plane set from storage $(file_name):track_data kill_plane
#--time attack medals
#bronze
$scoreboard players set @s customMedalB1 $(medal_bronze_digit_1)
$scoreboard players set @s customMedalB2 $(medal_bronze_digit_2)
$scoreboard players set @s customMedalB3 $(medal_bronze_digit_3)
$scoreboard players set @s customMedalB4 $(medal_bronze_digit_4)
#silver
$scoreboard players set @s customMedalS1 $(medal_silver_digit_1)
$scoreboard players set @s customMedalS2 $(medal_silver_digit_2)
$scoreboard players set @s customMedalS3 $(medal_silver_digit_3)
$scoreboard players set @s customMedalS4 $(medal_silver_digit_4)
#gold
$scoreboard players set @s customMedalG1 $(medal_gold_digit_1)
$scoreboard players set @s customMedalG2 $(medal_gold_digit_2)
$scoreboard players set @s customMedalG3 $(medal_gold_digit_3)
$scoreboard players set @s customMedalG4 $(medal_gold_digit_4)
#diamond
$scoreboard players set @s customMedalD1 $(medal_diamond_digit_1)
$scoreboard players set @s customMedalD2 $(medal_diamond_digit_2)
$scoreboard players set @s customMedalD3 $(medal_diamond_digit_3)
$scoreboard players set @s customMedalD4 $(medal_diamond_digit_4)

#we did it
scoreboard players set #success value 1