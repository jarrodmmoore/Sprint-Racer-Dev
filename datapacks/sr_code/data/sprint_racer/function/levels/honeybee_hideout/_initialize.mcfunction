tp @a[tag=!dontWarp,tag=!dontSetGamemode] -1000 115 -725
tp @a[tag=!dontWarp,tag=dontSetGamemode] -995 137 -722

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 3

gamerule doDaylightCycle false
time set 9000

#night vision if we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=9}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14}] add musicViable
######