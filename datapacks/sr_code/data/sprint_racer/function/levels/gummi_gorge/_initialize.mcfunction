tp @a[tag=!dontWarp] -1376 120 -2551

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,type=armor_stand] check 4
gamerule doDaylightCycle false
time set 6000

scoreboard players set @e[tag=w,type=armor_stand] startType 3

#gumball machine teleports are deterministic
scoreboard players set #ggTeleport value 5

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=3}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=4}] add musicViable
######