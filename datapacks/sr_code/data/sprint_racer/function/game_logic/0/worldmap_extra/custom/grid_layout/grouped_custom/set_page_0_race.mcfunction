scoreboard players set #trackGridPage value 0
scoreboard players set #trackGridStartCustom value 1
scoreboard players set #trackGridSelected value 1
scoreboard players set #trackGridEnd value 18
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] wmCustomMode 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] wmCustomNum 1

#need to re-generate tracks list. race and battle mode have entirely seperate ones!
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/organize_tracks/_start

#count how many groups there are
execute store result score #math value run data get storage sprint_racer:custom_track_list groups
#count how many Uncategorized tracks there are
execute store result score #math2 value run data get storage sprint_racer:custom_track_list groups[0]
#if there's 2+ groups and nothing in Uncategorized, start on page 1 (the second one)
execute if score #math value matches 2.. if score #math2 value matches ..1 run scoreboard players set #trackGridPage value 1