tp @a[tag=!dontWarp] -1376 120 -2551

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check 4
gamerule advance_time false
time set 6000

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType 3

#gumball machine teleports are deterministic
scoreboard players set #ggTeleport value 5

######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add musicViable
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add musicViable
######