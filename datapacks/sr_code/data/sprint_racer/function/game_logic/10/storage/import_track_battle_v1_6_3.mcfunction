#executed by the new custom track that's being created
#with storage $(filename):track_data
#temp_id is our ticket to accessing our assigned custom_track_storage_X

#some gotchas with v1.6.3 and earlier:
#track_name
#tagline
#^ both of these need to be stored as text components, not a string

#need reference to associated storage again...
$data modify storage sprint_racer:func_args temp_id set value $(temp_id)


#apply storage data to ourselves

#BATTLE IMPORT

#!!!=====!!!
#--track name
data modify entity @s CustomName set value [{text:"track_name (string failed to parse)",color:red}]
$data modify storage sprint_racer:func_args convert_track_name set from storage $(file_name):track_data track_name
#!!!=====!!!
#--use tagline?
$scoreboard players set #read value $(use_tag_line)
execute if score #read value matches 0 run tag @s remove useTagLine
execute if score #read value matches 1 run tag @s add useTagLine
#!!!=====!!!
#--tagline string
$data modify storage sprint_racer:custom_track_storage_$(temp_id) tagline set value [{text:"tagline (string failed to parse)",color:red}]
$data modify storage sprint_racer:func_args convert_tagline set from storage $(file_name):track_data tagline
#!!!=====!!!
#--coord xyz
$scoreboard players set @s coord_x $(coord_x)
$scoreboard players set @s coord_y $(coord_y)
$scoreboard players set @s coord_z $(coord_z)
#--support ai
$scoreboard players set #read value $(supports_ai)
execute if score #read value matches 0 run tag @s add noAItrack
execute if score #read value matches 1 run tag @s remove noAItrack
#--targets
$scoreboard players set @s customTTargets $(target_count)
#--size
tag @s remove trackTiny
tag @s remove trackSmall
tag @s remove trackMedium
tag @s remove trackLarge
$tag @s add $(track_size)
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
#--music macro path?
$scoreboard players set #read value $(use_macro_music_path)
execute if score #read value matches 0 run tag @s remove useCustomSongPath
execute if score #read value matches 1 run tag @s add useCustomSongPath
#--music_namespace
$data modify storage sprint_racer:custom_track_storage_$(temp_id) music_namespace set from storage $(file_name):track_data music_namespace
#--music_path
$data modify storage sprint_racer:custom_track_storage_$(temp_id) music_path set from storage $(file_name):track_data music_path
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
#v1.6.7 stuff (older tracks won't have this data, so we'll just assign defaults)
#--track random weight
#no action needed
#--track group
$data modify storage sprint_racer:custom_track_storage_$(temp_id) track_group set value "Uncategorized"
#--track sort number
scoreboard players set @s customTrackSortNumber 999

#!!!=====!!!
#do the remaining string conversions (we can re-use the race function here)
function sprint_racer:game_logic/10/storage/import_track_race_v1_6_3_string_conversions with storage sprint_racer:func_args
execute if score #success value matches 0 run tellraw @a ["",{translate:"sr.custom_track.imported_track_string_conversions_errors",color:"red",bold:true}]
#!!!=====!!!


#we did it
scoreboard players set #success value 1