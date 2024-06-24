tp @a[tag=!dontWarp] 828 82 771

scoreboard players set @e[tag=w,type=armor_stand] lap 1
scoreboard players set @e[tag=w,type=armor_stand] check 8
gamerule doDaylightCycle false
time set 3000

scoreboard players add @a climbProgress 0



######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=7}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=9}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=12}] add musicViable
######