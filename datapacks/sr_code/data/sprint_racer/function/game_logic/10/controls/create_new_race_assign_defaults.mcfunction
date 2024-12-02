#executed by @e[tag=imnew,type=armor_stand,limit=1]

tag @s add customrace
tag @s add trackNovice
tag @s add noAItrack
scoreboard players set @s rNumber -1
scoreboard players set @s lap 3
scoreboard players set @s check 3
scoreboard players set @s customTrackTime 6000
scoreboard players set @s customCodePath 0
scoreboard players set @s customPreview 11000
scoreboard players set @s customTWeather 1
scoreboard players set @s BGMtrack -1
scoreboard players set @s timeRemaining 4
scoreboard players set @s randomCooldown 0
scoreboard players set @s randomCooldown2 0
scoreboard players set @s coord_x 0
scoreboard players set @s coord_y 100
scoreboard players set @s coord_z 0
scoreboard players set @s medalRace 0
scoreboard players set @s trackBestTime 0
scoreboard players set @s trackBestTimeB 0
scoreboard players set @s trackBestTime2 0
scoreboard players set @s trackBestTime2B 0
scoreboard players set @s customMedalB1 0
scoreboard players set @s customMedalB2 0
scoreboard players set @s customMedalB3 0
scoreboard players set @s customMedalB4 0
scoreboard players set @s customMedalS1 0
scoreboard players set @s customMedalS2 0
scoreboard players set @s customMedalS3 0
scoreboard players set @s customMedalS4 0
scoreboard players set @s customMedalG1 0
scoreboard players set @s customMedalG2 0
scoreboard players set @s customMedalG3 0
scoreboard players set @s customMedalG4 0
scoreboard players set @s customMedalD1 0
scoreboard players set @s customMedalD2 0
scoreboard players set @s customMedalD3 0
scoreboard players set @s customMedalD4 0
function sprint_racer:game_logic/10/assign_custom_tagline_storage

#same mapVersion as w
scoreboard players operation @s mapVersion = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mapVersion