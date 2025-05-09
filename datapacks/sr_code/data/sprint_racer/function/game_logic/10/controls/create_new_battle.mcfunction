scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customDummyBID 1 
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customDummyBID 1

#summon new stand
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s positioned ~ 80 ~ run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["customtrack","btBlacklist","trackStandB","imnew"]}
execute as @e[tag=imnew,type=armor_stand,limit=1] run function sprint_racer_language:_dlc_1/lobby/custom_track/give_default_name
scoreboard players operation @e[tag=imnew,type=armor_stand,limit=1] customTrackBID = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customDummyBID
#give new armor stand all the default data
execute as @e[tag=imnew,type=armor_stand,limit=1] run function sprint_racer:game_logic/10/controls/create_new_battle_assign_defaults

#announce
function sprint_racer_language:_dlc_1/lobby/custom_track/battle_created

#cleanup
tag @e[tag=imnew,type=armor_stand,limit=1] remove imnew
scoreboard players set @s inputCooldown 20

#show the track we made
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customDummyBID
#function sprint_racer:game_logic/10/update_display/_index
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display