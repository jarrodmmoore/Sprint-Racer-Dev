tp @a[tag=!dontWarp] -303 90 -1553

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 3

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 4
gamerule doDaylightCycle false
time set 10000



######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=7}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=12}] add musicViable
######