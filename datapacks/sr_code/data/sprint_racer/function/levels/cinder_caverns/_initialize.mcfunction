tp @a[tag=!dontWarp] 362 26 560

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,scores={gameState=7}] lap 2

scoreboard players set @e[tag=w,type=armor_stand] check 3
gamerule doDaylightCycle false
time set 6000



######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=10}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=12}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=14}] add musicViable
######