scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] customDummyID 1 
execute as @e[tag=customtrack,tag=customrace] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] customDummyID 1

#summon new stand
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] at @s positioned ~ 80 ~ run summon armor_stand ~ ~ ~16 {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["customtrack","trackStandR","rtBlacklist","imnew"]}
execute as @e[tag=imnew,type=armor_stand,limit=1] run function sprint_racer_language:_dlc_1/lobby/custom_track/give_default_name
scoreboard players operation @e[tag=imnew,type=armor_stand,limit=1] customTrackID = @e[limit=1,type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] customDummyID
#give new armor stand all the default data
execute as @e[tag=imnew,type=armor_stand,limit=1] run function sprint_racer:game_logic/10/controls/create_new_race_assign_defaults

#announce
function sprint_racer_language:_dlc_1/lobby/custom_track/race_created

#cleanup
tag @e[tag=imnew,type=armor_stand,limit=1] remove imnew
scoreboard players set @s inputCooldown 20

#show the new track we made
scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] tvPoolNum = @e[limit=1,type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] customDummyID

function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display