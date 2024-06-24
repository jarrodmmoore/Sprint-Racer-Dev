tp @a[tag=!dontWarp] 91 78 1557

scoreboard players set @e[tag=w,type=armor_stand] startType 1

scoreboard players set @e[tag=w,type=armor_stand] lap 4
scoreboard players set @e[tag=w,scores={gameState=7}] lap 3

scoreboard players set @e[tag=w,type=armor_stand] check 2
gamerule doDaylightCycle false
time set 9000



######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=3}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=4}] add musicViable
######