tp @a[tag=!dontWarp] 1593 195 2945

scoreboard players set @e[tag=w,type=armor_stand] startType 2
scoreboard players set @e[tag=w,type=armor_stand] GTplatTimer 0

scoreboard players set @e[tag=w,type=armor_stand] lap 1
scoreboard players set @e[tag=w,type=armor_stand] check 10
gamerule doDaylightCycle false
time set 12800

scoreboard players set @e[tag=w,type=armor_stand] timeRemaining2 11980
scoreboard players set @e[tag=w,type=armor_stand] countTimeMin 9
scoreboard players set @e[tag=w,type=armor_stand] countTimeSec 59
scoreboard players set @e[tag=w,type=armor_stand] countTimeMsec 9

tag @e[tag=w,type=armor_stand] add hideLaps
tag @e[tag=w,type=armor_stand] add noCharity
tag @e[tag=w,type=armor_stand] add noAItrack
tag @e[tag=w,type=armor_stand] add gauntletTrack

#night vision is we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=17}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=18}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=3}] add musicViable
######