tp @a[tag=!dontWarp] 2187 214 -1066

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,type=armor_stand] check 5
gamerule doDaylightCycle false
time set 14000

scoreboard players set @e[tag=w,type=armor_stand] startType 1

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=21}] add setBGM
######