scoreboard players set @e[tag=w,type=armor_stand] customDummyID 1 
execute as @e[tag=customtrack,tag=customrace] run scoreboard players add @e[tag=w,type=armor_stand] customDummyID 1

#summon new stand
execute as @e[tag=w,type=armor_stand] at @s positioned ~ 80 ~ run summon armor_stand ~ ~ ~ {Invulnerable:1,NoGravity:1,Tags:["customtrack","trackStandR","rtBlacklist","imnew"]}
execute as @e[tag=imnew,type=armor_stand,limit=1] run function sprint_racer_language:_dlc_1/lobby/custom_track/give_default_name
scoreboard players operation @e[tag=imnew,type=armor_stand,limit=1] customTrackID = @e[limit=1,tag=w] customDummyID
tag @e[tag=imnew,type=armor_stand,limit=1] add customrace
tag @e[tag=imnew,type=armor_stand,limit=1] add trackNovice
tag @e[tag=imnew,type=armor_stand,limit=1] add noAItrack
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] rNumber -1
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] lap 3
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] check 3
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customTrackTime 6000
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customCodePath 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customPreview 11000
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customTWeather 1
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] BGMtrack -1
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] timeRemaining 4
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] randomCooldown 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] randomCooldown2 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] coord_x 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] coord_y 100
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] coord_z 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] medalRace 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] trackBestTime 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] trackBestTimeB 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] trackBestTime2 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] trackBestTime2B 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalB1 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalB2 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalB3 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalB4 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalS1 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalS2 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalS3 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalS4 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalG1 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalG2 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalG3 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalG4 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalD1 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalD2 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalD3 0
scoreboard players set @e[tag=imnew,type=armor_stand,limit=1] customMedalD4 0
function sprint_racer_language:_dlc_1/lobby/custom_track/race_created
tag @e[tag=imnew,type=armor_stand,limit=1] remove imnew

scoreboard players set @s inputCooldown 20

scoreboard players operation @e[tag=w,type=armor_stand] tvPoolNum = @e[limit=1,tag=w] customDummyID
function sprint_racer:game_logic/10/update_display/_index