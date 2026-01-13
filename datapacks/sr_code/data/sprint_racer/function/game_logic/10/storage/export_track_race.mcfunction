#executed by @e[tag=focusT,type=armor_stand,tag=customrace]
#with args $(filename) and $(id)

#note: storage path (customTagLine) will be generated upon track creation. we don't need to store it.


#RACE

#--file_name
$data modify storage $(filename):track_data file_name set value "$(filename)"
#(hm, yes. the floor here is made of floor)
#--track type (race/battle)
$data modify storage $(filename):track_data track_type set value 1
#--UUID
$data modify storage $(filename):track_data track_uuid_0 set from entity @s UUID[0]
$data modify storage $(filename):track_data track_uuid_1 set from entity @s UUID[1]
$data modify storage $(filename):track_data track_uuid_2 set from entity @s UUID[2]
$data modify storage $(filename):track_data track_uuid_3 set from entity @s UUID[3]
#--track name
$data modify storage $(filename):track_data track_name set from entity @s CustomName
#--version this track was created in
$execute store result storage $(filename):track_data version_created_in int 1 run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mapVersion
#--throw a warning if this track is getting imported into an older version that's missing some features
$data modify storage $(filename):track_data version_needs_warning set value 10610

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
#--laps
$execute store result storage $(filename):track_data laps int 1 run scoreboard players get @s lap
#--checkpoints
$execute store result storage $(filename):track_data checkpoints int 1 run scoreboard players get @s check
#--support ai
$execute if entity @s[tag=!noAItrack] run data modify storage $(filename):track_data supports_ai set value 1
$execute if entity @s[tag=noAItrack] run data modify storage $(filename):track_data supports_ai set value 0
#--time limit
$execute store result storage $(filename):track_data time_limit int 1 run scoreboard players get @s timeRemaining
#--difficulty
$execute if entity @s[tag=trackNovice] run data modify storage $(filename):track_data difficulty set value "trackNovice"
$execute if entity @s[tag=trackIntermed] run data modify storage $(filename):track_data difficulty set value "trackIntermed"
$execute if entity @s[tag=trackExpert] run data modify storage $(filename):track_data difficulty set value "trackExpert"
$execute if entity @s[tag=trackMaster] run data modify storage $(filename):track_data difficulty set value "trackMaster"
#--gauntlet track
$execute if entity @s[tag=customGauntlet] run data modify storage $(filename):track_data gauntlet_track set value 1
$execute if entity @s[tag=!customGauntlet] run data modify storage $(filename):track_data gauntlet_track set value 0
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
#--music macro path?
$execute if entity @s[tag=useCustomSongPath] run data modify storage $(filename):track_data use_macro_music_path set value 1
$execute if entity @s[tag=!useCustomSongPath] run data modify storage $(filename):track_data use_macro_music_path set value 0
#--music_namespace
$data modify storage $(filename):track_data music_namespace set from storage sprint_racer:custom_track_storage_$(id) music_namespace
#--music_path
$data modify storage $(filename):track_data music_path set from storage sprint_racer:custom_track_storage_$(id) music_path
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

#v1.6.7
#--track randomization weight (3 = common, 2 = uncommon, 1 = rare, 0 = banned)
$data modify storage $(filename):track_data track_random_weight set value 3
$execute if entity @s[tag=r_1_only] run data modify storage $(filename):track_data track_random_weight set value 2
$execute if entity @s[tag=r_rare_track] run data modify storage $(filename):track_data track_random_weight set value 1
$execute if entity @s[tag=rtBlacklist] run data modify storage $(filename):track_data track_random_weight set value 0
#--track group
$data modify storage $(filename):track_data track_group set from storage sprint_racer:custom_track_storage_$(id) track_group
#--track sort number
$execute store result storage $(filename):track_data track_sort_number int 1 run scoreboard players get @s customTrackSortNumber

#v1.6.11
#items override (-1 = unset, 0 = off, 1 = on)
$data modify storage $(filename):settings_overrides items set value -1
$execute if entity @s[tag=o_itemsOff] run data modify storage $(filename):settings_overrides items set value 0
$execute if entity @s[tag=o_itemsOn] run data modify storage $(filename):settings_overrides items set value 1
#item bans (-1 = unset, 0 = banned, 1 = enchant banned, 2 = enabled)
$data modify storage $(filename):settings_overrides item_bans set value [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
$execute if entity @s[tag=forceNo1] run data modify storage $(filename):settings_overrides item_bans[0] set value 2
$execute if entity @s[tag=banEnchant1] run data modify storage $(filename):settings_overrides item_bans[0] set value 1
$execute if entity @s[tag=banNo1] run data modify storage $(filename):settings_overrides item_bans[0] set value 0
$execute if entity @s[tag=forceNo2] run data modify storage $(filename):settings_overrides item_bans[1] set value 2
$execute if entity @s[tag=banEnchant2] run data modify storage $(filename):settings_overrides item_bans[1] set value 1
$execute if entity @s[tag=banNo2] run data modify storage $(filename):settings_overrides item_bans[1] set value 0
$execute if entity @s[tag=forceNo3] run data modify storage $(filename):settings_overrides item_bans[2] set value 2
$execute if entity @s[tag=banEnchant3] run data modify storage $(filename):settings_overrides item_bans[2] set value 1
$execute if entity @s[tag=banNo3] run data modify storage $(filename):settings_overrides item_bans[2] set value 0
$execute if entity @s[tag=forceNo4] run data modify storage $(filename):settings_overrides item_bans[3] set value 2
$execute if entity @s[tag=banEnchant4] run data modify storage $(filename):settings_overrides item_bans[3] set value 1
$execute if entity @s[tag=banNo4] run data modify storage $(filename):settings_overrides item_bans[3] set value 0
$execute if entity @s[tag=forceNo5] run data modify storage $(filename):settings_overrides item_bans[4] set value 2
$execute if entity @s[tag=banEnchant5] run data modify storage $(filename):settings_overrides item_bans[4] set value 1
$execute if entity @s[tag=banNo5] run data modify storage $(filename):settings_overrides item_bans[4] set value 0
$execute if entity @s[tag=forceNo6] run data modify storage $(filename):settings_overrides item_bans[5] set value 2
$execute if entity @s[tag=banEnchant6] run data modify storage $(filename):settings_overrides item_bans[5] set value 1
$execute if entity @s[tag=banNo6] run data modify storage $(filename):settings_overrides item_bans[5] set value 0
$execute if entity @s[tag=forceNo7] run data modify storage $(filename):settings_overrides item_bans[6] set value 2
$execute if entity @s[tag=banEnchant7] run data modify storage $(filename):settings_overrides item_bans[6] set value 1
$execute if entity @s[tag=banNo7] run data modify storage $(filename):settings_overrides item_bans[6] set value 0
$execute if entity @s[tag=forceNo8] run data modify storage $(filename):settings_overrides item_bans[7] set value 2
$execute if entity @s[tag=banEnchant8] run data modify storage $(filename):settings_overrides item_bans[7] set value 1
$execute if entity @s[tag=banNo8] run data modify storage $(filename):settings_overrides item_bans[7] set value 0
$execute if entity @s[tag=forceNo9] run data modify storage $(filename):settings_overrides item_bans[8] set value 2
$execute if entity @s[tag=banEnchant9] run data modify storage $(filename):settings_overrides item_bans[8] set value 1
$execute if entity @s[tag=banNo9] run data modify storage $(filename):settings_overrides item_bans[8] set value 0
$execute if entity @s[tag=forceNo10] run data modify storage $(filename):settings_overrides item_bans[9] set value 2
$execute if entity @s[tag=banEnchant10] run data modify storage $(filename):settings_overrides item_bans[9] set value 1
$execute if entity @s[tag=banNo10] run data modify storage $(filename):settings_overrides item_bans[9] set value 0
$execute if entity @s[tag=forceNo11] run data modify storage $(filename):settings_overrides item_bans[10] set value 2
$execute if entity @s[tag=banEnchant11] run data modify storage $(filename):settings_overrides item_bans[10] set value 1
$execute if entity @s[tag=banNo11] run data modify storage $(filename):settings_overrides item_bans[10] set value 0
$execute if entity @s[tag=forceNo12] run data modify storage $(filename):settings_overrides item_bans[11] set value 2
$execute if entity @s[tag=banEnchant12] run data modify storage $(filename):settings_overrides item_bans[11] set value 1
$execute if entity @s[tag=banNo12] run data modify storage $(filename):settings_overrides item_bans[11] set value 0
$execute if entity @s[tag=forceNo13] run data modify storage $(filename):settings_overrides item_bans[12] set value 2
$execute if entity @s[tag=banEnchant13] run data modify storage $(filename):settings_overrides item_bans[12] set value 1
$execute if entity @s[tag=banNo13] run data modify storage $(filename):settings_overrides item_bans[12] set value 0
$execute if entity @s[tag=forceNo14] run data modify storage $(filename):settings_overrides item_bans[13] set value 2
$execute if entity @s[tag=banEnchant14] run data modify storage $(filename):settings_overrides item_bans[13] set value 1
$execute if entity @s[tag=banNo14] run data modify storage $(filename):settings_overrides item_bans[13] set value 0
$execute if entity @s[tag=forceNo15] run data modify storage $(filename):settings_overrides item_bans[14] set value 2
$execute if entity @s[tag=banEnchant15] run data modify storage $(filename):settings_overrides item_bans[14] set value 1
$execute if entity @s[tag=banNo15] run data modify storage $(filename):settings_overrides item_bans[14] set value 0
$execute if entity @s[tag=forceNo16] run data modify storage $(filename):settings_overrides item_bans[15] set value 2
$execute if entity @s[tag=banEnchant16] run data modify storage $(filename):settings_overrides item_bans[15] set value 1
$execute if entity @s[tag=banNo16] run data modify storage $(filename):settings_overrides item_bans[15] set value 0
$execute if entity @s[tag=forceNo17] run data modify storage $(filename):settings_overrides item_bans[16] set value 2
$execute if entity @s[tag=banEnchant17] run data modify storage $(filename):settings_overrides item_bans[16] set value 1
$execute if entity @s[tag=banNo17] run data modify storage $(filename):settings_overrides item_bans[16] set value 0
$execute if entity @s[tag=forceNo18] run data modify storage $(filename):settings_overrides item_bans[17] set value 2
$execute if entity @s[tag=banEnchant18] run data modify storage $(filename):settings_overrides item_bans[17] set value 1
$execute if entity @s[tag=banNo18] run data modify storage $(filename):settings_overrides item_bans[17] set value 0
$execute if entity @s[tag=forceNo19] run data modify storage $(filename):settings_overrides item_bans[18] set value 2
$execute if entity @s[tag=banEnchant19] run data modify storage $(filename):settings_overrides item_bans[18] set value 1
$execute if entity @s[tag=banNo19] run data modify storage $(filename):settings_overrides item_bans[18] set value 0
$execute if entity @s[tag=forceNo20] run data modify storage $(filename):settings_overrides item_bans[19] set value 2
$execute if entity @s[tag=banEnchant20] run data modify storage $(filename):settings_overrides item_bans[19] set value 1
$execute if entity @s[tag=banNo20] run data modify storage $(filename):settings_overrides item_bans[19] set value 0
#item rule (-1 = unset, 1.. = something)
$data modify storage $(filename):settings_overrides item_rule set value -1
$execute if score @s itemPresetA matches 0.. store result storage $(filename):settings_overrides item_rule int 1 run scoreboard players get @s itemPresetA
#teams mode (-1 = unset, 0 = off, 1 = on)
$data modify storage $(filename):settings_overrides teams set value -1
$execute if entity @s[tag=o_teamsOff] run data modify storage $(filename):settings_overrides teams set value 0
$execute if entity @s[tag=o_teamsOn] run data modify storage $(filename):settings_overrides teams set value 1
#nearby player invisibility (-1 = unset, 0 = never, 1 = always, 2 = 5plus players)
$data modify storage $(filename):settings_overrides player_invisibility set value -1
$execute if entity @s[tag=o_neabyInvis_never] run data modify storage $(filename):settings_overrides player_invisibility set value 0
$execute if entity @s[tag=o_neabyInvis_always] run data modify storage $(filename):settings_overrides player_invisibility set value 1
$execute if entity @s[tag=o_neabyInvis_5plus] run data modify storage $(filename):settings_overrides player_invisibility set value 2
#absorption at race start (-1 = unset, 0 = never, 1 = always, 2 = 5plus players)
$data modify storage $(filename):settings_overrides absorption set value -1
$execute if entity @s[tag=o_absorption_never] run data modify storage $(filename):settings_overrides absorption set value 0
$execute if entity @s[tag=o_absorption_always] run data modify storage $(filename):settings_overrides absorption set value 1
$execute if entity @s[tag=o_absorption_5plus] run data modify storage $(filename):settings_overrides absorption set value 2


#now... try read from the storage to verify it worked
scoreboard players set #test2 value 0
$execute store result score #test2 value run data get storage $(filename):track_data track_type 1
execute if score #test2 value matches 1 run scoreboard players set #success value 1