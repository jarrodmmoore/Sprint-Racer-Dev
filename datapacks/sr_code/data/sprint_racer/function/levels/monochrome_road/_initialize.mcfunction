tp @a[tag=!dontWarp] -1510 222 -1022

scoreboard players set @e[tag=w,type=armor_stand] lap 4
scoreboard players set @e[tag=w,type=armor_stand] check 4
gamerule doDaylightCycle false
time set 18000

scoreboard players set @e[tag=w,type=armor_stand] startType 5



#night vision is we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=10}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=14}] add musicViable
######