#executed by the new custom track that's being created
#with storage $(filename):track_data
#temp_id is our ticket to accessing our assigned custom_track_storage_X


#apply storage data to ourselves

#BATTLE IMPORT

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
#v1.6.7 stuff
#--track random weight (3 = common, 2 = uncommon, 1 = rare, 0 = banned)
$scoreboard players set #read value $(track_random_weight)
execute if score #read value matches 0 run tag @s add btBlacklist
execute if score #read value matches 1 run tag @s add b_rare_track
execute if score #read value matches 1..2 run tag @s add b_1_only
#--track group
$data modify storage sprint_racer:custom_track_storage_$(temp_id) track_group set from storage $(file_name):track_data track_group
#--track sort number
$scoreboard players set @s customTrackSortNumber $(track_sort_number)
#v1.6.11 stuff
#--items override
$execute store result score #read value run data get storage $(file_name):settings_overrides items 1
execute if score #read value matches 0 run tag @s add o_itemsOff
execute if score #read value matches 1 run tag @s add o_itemsOn
#--item bans overrides
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[0] 1
execute if score #read value matches 0 run tag @s add banNo1
execute if score #read value matches 1 run tag @s add banEnchant1
execute if score #read value matches 2 run tag @s add forceNo1
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[1] 1
execute if score #read value matches 0 run tag @s add banNo2
execute if score #read value matches 1 run tag @s add banEnchant2
execute if score #read value matches 2 run tag @s add forceNo2
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[2] 1
execute if score #read value matches 0 run tag @s add banNo3
execute if score #read value matches 1 run tag @s add banEnchant3
execute if score #read value matches 2 run tag @s add forceNo3
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[3] 1
execute if score #read value matches 0 run tag @s add banNo4
execute if score #read value matches 1 run tag @s add banEnchant4
execute if score #read value matches 2 run tag @s add forceNo4
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[4] 1
execute if score #read value matches 0 run tag @s add banNo5
execute if score #read value matches 1 run tag @s add banEnchant5
execute if score #read value matches 2 run tag @s add forceNo5
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[5] 1
execute if score #read value matches 0 run tag @s add banNo6
execute if score #read value matches 1 run tag @s add banEnchant6
execute if score #read value matches 2 run tag @s add forceNo6
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[6] 1
execute if score #read value matches 0 run tag @s add banNo7
execute if score #read value matches 1 run tag @s add banEnchant7
execute if score #read value matches 2 run tag @s add forceNo7
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[7] 1
execute if score #read value matches 0 run tag @s add banNo8
execute if score #read value matches 1 run tag @s add banEnchant8
execute if score #read value matches 2 run tag @s add forceNo8
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[8] 1
execute if score #read value matches 0 run tag @s add banNo9
execute if score #read value matches 1 run tag @s add banEnchant9
execute if score #read value matches 2 run tag @s add forceNo9
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[9] 1
execute if score #read value matches 0 run tag @s add banNo10
execute if score #read value matches 1 run tag @s add banEnchant10
execute if score #read value matches 2 run tag @s add forceNo10
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[10] 1
execute if score #read value matches 0 run tag @s add banNo11
execute if score #read value matches 1 run tag @s add banEnchant11
execute if score #read value matches 2 run tag @s add forceNo11
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[11] 1
execute if score #read value matches 0 run tag @s add banNo12
execute if score #read value matches 1 run tag @s add banEnchant12
execute if score #read value matches 2 run tag @s add forceNo12
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[12] 1
execute if score #read value matches 0 run tag @s add banNo13
execute if score #read value matches 1 run tag @s add banEnchant13
execute if score #read value matches 2 run tag @s add forceNo13
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[13] 1
execute if score #read value matches 0 run tag @s add banNo14
execute if score #read value matches 1 run tag @s add banEnchant14
execute if score #read value matches 2 run tag @s add forceNo14
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[14] 1
execute if score #read value matches 0 run tag @s add banNo15
execute if score #read value matches 1 run tag @s add banEnchant15
execute if score #read value matches 2 run tag @s add forceNo15
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[15] 1
execute if score #read value matches 0 run tag @s add banNo16
execute if score #read value matches 1 run tag @s add banEnchant16
execute if score #read value matches 2 run tag @s add forceNo16
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[16] 1
execute if score #read value matches 0 run tag @s add banNo17
execute if score #read value matches 1 run tag @s add banEnchant17
execute if score #read value matches 2 run tag @s add forceNo17
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[17] 1
execute if score #read value matches 0 run tag @s add banNo18
execute if score #read value matches 1 run tag @s add banEnchant18
execute if score #read value matches 2 run tag @s add forceNo18
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[18] 1
execute if score #read value matches 0 run tag @s add banNo19
execute if score #read value matches 1 run tag @s add banEnchant19
execute if score #read value matches 2 run tag @s add forceNo19
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans[19] 1
execute if score #read value matches 0 run tag @s add banNo20
execute if score #read value matches 1 run tag @s add banEnchant20
execute if score #read value matches 2 run tag @s add forceNo20
#--extra item ban overrides
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans_extra[0] 1
execute if score #read value matches 0 run tag @s add banBattleBat
execute if score #read value matches 1 run tag @s add banEnchantBattleBat
execute if score #read value matches 2 run tag @s add forceBattleBat
$execute store result score #read value run data get storage $(file_name):settings_overrides item_bans_extra[1] 1
execute if score #read value matches 0 run tag @s add banObliterator
execute if score #read value matches 1..2 run tag @s add forceObliterator
#--item rule override
$execute store result score #read value run data get storage $(file_name):settings_overrides item_rule 1
execute if score #read value matches 0.. run scoreboard players operation @s itemPresetA = #read value
#--gamemode override
$execute store result score #read value run data get storage $(file_name):settings_overrides gamemode 1
execute if score #read value matches 0 run tag @s add randomPresetB
execute if score #read value matches 1.. run scoreboard players operation @s gamemodePresetB = #read value
#--teams mode override
$execute store result score #read value run data get storage $(file_name):settings_overrides teams 1
execute if score #read value matches 0 run tag @s add o_teamsOff
execute if score #read value matches 1 run tag @s add o_teamsOn
#--locator bar override
$execute store result score #read value run data get storage $(file_name):settings_overrides locator_bar 1
execute if score #read value matches 0 run tag @s add o_locatorBarOff
execute if score #read value matches 1 run tag @s add o_locatorBarOn


#we did it
scoreboard players set #success value 1