tp @a[tag=!dontWarp] -424 177 -727

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,type=armor_stand] check 4
gamerule doDaylightCycle false
time set 18000



#night vision is we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=5}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=13}] add musicViable
######