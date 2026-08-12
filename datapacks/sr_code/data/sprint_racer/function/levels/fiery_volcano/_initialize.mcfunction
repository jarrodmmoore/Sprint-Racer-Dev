tp @a[tag=!dontWarp] -28 100 -1753

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] lap 4
gamerule advance_time true
time set 12500

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] mapZone 1
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] startType 6



######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=7}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=13}] add musicViable
######