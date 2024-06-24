tp @a[tag=!dontWarp] -60 72 1695

scoreboard players set @e[tag=w,type=armor_stand] lap 4
scoreboard players set @e[tag=w,type=armor_stand] check 2
weather rain
tag @e[tag=w,type=armor_stand] add raining
gamerule doDaylightCycle false
time set 6000



######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=7}] add musicViable
######