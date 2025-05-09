#goals
#1: make a list of all unique track group strings, with "Uncategorized" being the first page
#2: get all custom tracks grouped into bins based on track strings
#3: sort all custom tracks within the bins based on sort number
#4: make sure groups with multiple pages will work okay
#5: react appropriately to no custom tracks existing at all

#-----
#example data format
# groups = [["Uncategorized", 1, 2, 3], ["MKMC", 10, 12, 13, 20], ["MarioKartTrackPack", 7, 5, 11]]
#
# - each list is a bin
# - the first entry in each bin is the group name string
# - the following entries are the sorted custom track IDs that belong to the group
#-----

#1 = race, 2 = battle. you know the drill.
scoreboard players operation #trackGridMode value = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] wmCustomMode

#we need some markers that we can store tags on
kill 00000065-0000-038d-0000-022b00000045
kill 00000065-0000-038d-0000-022b00000046
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;101,909,555,69]}
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;101,909,555,70]}

#here's a start:
tag 00000065-0000-038d-0000-022b00000045 add Uncategorized
data modify storage sprint_racer:custom_track_list groups set value [["Uncategorized"]]
#this first bin is created no matter what. we always want it to come first!
#it may end up having no tracks. if so, we'll have a special case that starts the display on the second page.

#use the marker to assemble a list of unique track groups
execute if score #trackGridMode value matches 1 as @e[type=armor_stand,tag=customrace] run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/track_log_group
execute if score #trackGridMode value matches 2 as @e[type=armor_stand,tag=custombattle] run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/track_log_group

#now iterate through every track group and add each track into the list (with respect for their sort numbers)
scoreboard players add @e[tag=customtrack] customTrackSortNumber 0
tag @e[type=armor_stand,tag=customtrack] remove groupSorted
tag @e[type=armor_stand,tag=customtrack] remove groupMatched
data modify storage sprint_racer:func_args i set value 0
data modify storage sprint_racer:func_args i_next set value 1
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/group_iterate with storage sprint_racer:func_args


#cleanup
kill 00000065-0000-038d-0000-022b00000045
kill 00000065-0000-038d-0000-022b00000046
