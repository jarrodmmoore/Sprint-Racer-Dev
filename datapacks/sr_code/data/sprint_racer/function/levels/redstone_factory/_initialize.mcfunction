tp @a[tag=!dontWarp] 300 90 380

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
gamerule doDaylightCycle false
time set 6000

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noRapidStart
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] mapZone 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 4




######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=13}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14}] add musicViable
######