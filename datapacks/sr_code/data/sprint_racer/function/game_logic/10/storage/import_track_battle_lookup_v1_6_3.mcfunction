#summon new track armor stand
$function sprint_racer:game_logic/10/storage/summon_stand_with_uuid_battle with storage $(filename):track_data
#execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s positioned ~ 80 ~ run summon armor_stand ~ ~ ~16 {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["customtrack","trackStandB","imnew"]}
execute as @e[tag=imnew,type=armor_stand,limit=1] run function sprint_racer_language:_dlc_1/lobby/custom_track/give_default_name
tag @e[tag=imnew,type=armor_stand,limit=1] add custombattle

#assign default values to new track
execute as @e[tag=imnew,type=armor_stand,limit=1] run function sprint_racer:game_logic/10/controls/create_new_battle_assign_defaults

#get reference to the other associated storage we're going to write into
$execute store result storage $(filename):track_data temp_id int 1 run scoreboard players get @e[tag=imnew,type=armor_stand,limit=1] customTagLine

######
#track imports the command storage data onto itself
$execute as @e[tag=customtrack,type=armor_stand,tag=imnew] run function sprint_racer:game_logic/10/storage/import_track_battle_v1_6_3 with storage $(filename):track_data
######


#didn't get initialized properly? kill the new armor stand
execute if score #success value matches 0 run kill @e[tag=customtrack,type=armor_stand,tag=imnew]
execute if score #success value matches 0 run tag @e[tag=customtrack,type=armor_stand,tag=imnew] remove imnew
#and then exit with error message
$execute if score #success value matches 0 run return run tellraw @a ["",{translate:"sr.custom_track.import_failed_bad_data",color:"red",bold:true,with:[{text:"command_storage_$(filename).dat",color:"white",bold:false}]}]
#=====

#successful if we made it down here

#assign ID to new track
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customDummyBID 1
execute as @e[tag=customtrack,tag=custombattle,tag=!imnew] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customDummyBID 1
scoreboard players operation @e[tag=imnew,type=armor_stand,limit=1] customTrackBID = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customDummyBID

#announce track was made
$function sprint_racer_language:_dlc_6/lobby/custom_track/track_created_import with storage $(filename):track_data

#cleanup
tag @e[tag=customtrack,type=armor_stand,tag=imnew] remove imnew

#if in custom track manager, show the new track we made
execute unless score global gameState matches 10 run return 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolMode 2
fill 1595 79 369 1595 82 372 red_concrete
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customDummyBID
#function sprint_racer:game_logic/10/update_display/_index
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display