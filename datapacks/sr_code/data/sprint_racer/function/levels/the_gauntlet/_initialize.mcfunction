tp @a[tag=!dontWarp] 1094 134 2163

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 2

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 16
gamerule doDaylightCycle false
time set 18000

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining2 11980
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMin 9
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeSec 59
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMsec 9

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add hideLaps
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noCharity
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noAItrack
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add gauntletTrack

######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=17}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=18}] add musicViable
######