#executed by @e[tag=focusT,type=armor_stand,tag=custombattle]
#with args $(filename) and $(id)

#note: storage path (customTagLine) will be generated upon track creation. we don't need to store it.


#BATTLE

#--file_name
$data modify storage $(filename):track_data file_name set value "$(filename)"
#(hm, yes. the floor here is made of floor)
#--track type (race/battle)
$data modify storage $(filename):track_data track_type set value 2
#--track name
$data modify storage $(filename):track_data track_name set from entity @s CustomName
#--junk... for now
$data modify storage $(filename):track_data temp_id set value -1

#--use tagline?
$execute if entity @s[tag=useTagLine] run data modify storage $(filename):track_data use_tag_line set value 1
$execute if entity @s[tag=!useTagLine] run data modify storage $(filename):track_data use_tag_line set value 0
#--tagline string
$data modify storage $(filename):track_data tagline set from storage sprint_racer:custom_track_storage_$(id) tagline
#--coordinate x,y,z
$execute store result storage $(filename):track_data coord_x int 1 run scoreboard players get @s coord_x
$execute store result storage $(filename):track_data coord_y int 1 run scoreboard players get @s coord_y
$execute store result storage $(filename):track_data coord_z int 1 run scoreboard players get @s coord_z
#--support ai
$execute if entity @s[tag=!noAItrack] run data modify storage $(filename):track_data supports_ai set value 1
$execute if entity @s[tag=noAItrack] run data modify storage $(filename):track_data supports_ai set value 0
#--targets
$execute store result storage $(filename):track_data target_count int 1 run scoreboard players get @s customTTargets
#--size
$execute if entity @s[tag=trackTiny] run data modify storage $(filename):track_data track_size set value "trackTiny"
$execute if entity @s[tag=trackSmall] run data modify storage $(filename):track_data track_size set value "trackSmall"
$execute if entity @s[tag=trackMedium] run data modify storage $(filename):track_data track_size set value "trackMedium"
$execute if entity @s[tag=trackLarge] run data modify storage $(filename):track_data track_size set value "trackLarge"
#--custom functions index
$execute store result storage $(filename):track_data custom_code_index int 1 run scoreboard players get @s customCodePath
#--custom function macro path?
$execute if entity @s[tag=usingMacroCodePath] run data modify storage $(filename):track_data use_macro_code_path set value 1
$execute if entity @s[tag=!usingMacroCodePath] run data modify storage $(filename):track_data use_macro_code_path set value 0
#--function_namespace
$data modify storage $(filename):track_data function_namespace set from storage sprint_racer:custom_track_storage_$(id) function_namespace
#--function_path
$data modify storage $(filename):track_data function_path set from storage sprint_racer:custom_track_storage_$(id) function_path
#--time
$execute store result storage $(filename):track_data time_of_day int 1 run scoreboard players get @s customTrackTime
#--weather
$execute store result storage $(filename):track_data weather int 1 run scoreboard players get @s customTWeather
#--daylight cycle
$execute if entity @s[tag=daylightCycle] run data modify storage $(filename):track_data daylight_cycle set value 1
$execute if entity @s[tag=!daylightCycle] run data modify storage $(filename):track_data daylight_cycle set value 0
#--night vision
$execute if entity @s[tag=nightVision] run data modify storage $(filename):track_data night_vision set value 1
$execute if entity @s[tag=!nightVision] run data modify storage $(filename):track_data night_vision set value 0
#--music
$execute store result storage $(filename):track_data music_track int 1 run scoreboard players get @s BGMtrack
#--start countdown
$execute store result storage $(filename):track_data start_countdown int 1 run scoreboard players get @s startType
#--preview image index
$execute store result storage $(filename):track_data custom_preview_index int 1 run scoreboard players get @s customPreview
#--preview image use macro?
$execute if entity @s[tag=usingMacroPreview] run data modify storage $(filename):track_data use_macro_preview_image set value 1
$execute if entity @s[tag=!usingMacroPreview] run data modify storage $(filename):track_data use_macro_preview_image set value 0
#--preview image macro path string
$data modify storage $(filename):track_data preview_image set from storage sprint_racer:custom_track_storage_$(id) preview_image
#--overhead map?
$execute if entity @s[tag=useOverheadMap] run data modify storage $(filename):track_data use_overhead_map set value 1
$execute if entity @s[tag=!useOverheadMap] run data modify storage $(filename):track_data use_overhead_map set value 0
#--overhead_map stored value
$data modify storage $(filename):track_data overhead_map set from storage sprint_racer:custom_track_storage_$(id) overhead_map
#--kill plane?
$execute if entity @s[tag=killPlane] run data modify storage $(filename):track_data use_kill_plane set value 1
$execute if entity @s[tag=!killPlane] run data modify storage $(filename):track_data use_kill_plane set value 0
#--kill plane string
$data modify storage $(filename):track_data kill_plane set from storage sprint_racer:custom_track_storage_$(id) kill_plane
#--time attack bronze medal
$execute store result storage $(filename):track_data medal_bronze_digit_1 int 1 run scoreboard players get @s customMedalB1
$execute store result storage $(filename):track_data medal_bronze_digit_2 int 1 run scoreboard players get @s customMedalB2
$execute store result storage $(filename):track_data medal_bronze_digit_3 int 1 run scoreboard players get @s customMedalB3
$execute store result storage $(filename):track_data medal_bronze_digit_4 int 1 run scoreboard players get @s customMedalB4
#--time attack silver medal
$execute store result storage $(filename):track_data medal_silver_digit_1 int 1 run scoreboard players get @s customMedalS1
$execute store result storage $(filename):track_data medal_silver_digit_2 int 1 run scoreboard players get @s customMedalS2
$execute store result storage $(filename):track_data medal_silver_digit_3 int 1 run scoreboard players get @s customMedalS3
$execute store result storage $(filename):track_data medal_silver_digit_4 int 1 run scoreboard players get @s customMedalS4
#--time attack bronze medal g1
$execute store result storage $(filename):track_data medal_gold_digit_1 int 1 run scoreboard players get @s customMedalG1
$execute store result storage $(filename):track_data medal_gold_digit_2 int 1 run scoreboard players get @s customMedalG2
$execute store result storage $(filename):track_data medal_gold_digit_3 int 1 run scoreboard players get @s customMedalG3
$execute store result storage $(filename):track_data medal_gold_digit_4 int 1 run scoreboard players get @s customMedalG4
#--time attack bronze medal d1
$execute store result storage $(filename):track_data medal_diamond_digit_1 int 1 run scoreboard players get @s customMedalD1
$execute store result storage $(filename):track_data medal_diamond_digit_2 int 1 run scoreboard players get @s customMedalD2
$execute store result storage $(filename):track_data medal_diamond_digit_3 int 1 run scoreboard players get @s customMedalD3
$execute store result storage $(filename):track_data medal_diamond_digit_4 int 1 run scoreboard players get @s customMedalD4

#now... try read from the storage to verify it worked
scoreboard players set #test2 value 0
$execute store result score #test2 value run data get storage $(filename):track_data track_type 1
execute if score #test2 value matches 2 run scoreboard players set #success value 1