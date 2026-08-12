tp @a[tag=!dontWarp] 1593 195 2945

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] startType 2
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] GTplatTimer 0

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] lap 1
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] check 10
gamerule advance_time false
time set 12800

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeRemaining2 11980
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] countTimeMin 9
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] countTimeSec 59
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] countTimeMsec 9

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add hideLaps
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add noCharity
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add noAItrack
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add gauntletTrack

#night vision if we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=17}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=18}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add musicViable
######