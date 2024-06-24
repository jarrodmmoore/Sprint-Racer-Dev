tp @a[tag=!dontWarp] 1111 88 1111

scoreboard players set @e[tag=w,type=armor_stand] startType 3

scoreboard players set @e[tag=w,type=armor_stand] lap 1
scoreboard players set @e[tag=w,type=armor_stand] check 11
gamerule doDaylightCycle true
time set 11000

tag @e[tag=w,type=armor_stand] add noAItrack

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=3}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=4}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=12}] add musicViable
######