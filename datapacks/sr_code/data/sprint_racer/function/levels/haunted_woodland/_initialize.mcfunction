tp @a[tag=!dontWarp] 141 78 1706

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,scores={gameState=7}] lap 2

scoreboard players set @e[tag=w,type=armor_stand] check 6
gamerule doDaylightCycle false
tag @e[tag=w,type=armor_stand] add raining
weather rain
time set 6000



######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=13}] add musicViable
######