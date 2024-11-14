tp @a[tag=!dontWarp] 823 73 319

scoreboard players set @e[tag=w,type=armor_stand] lap 7
scoreboard players set @e[tag=w,scores={gameState=7}] lap 5

scoreboard players set @e[tag=w,type=armor_stand] check 2
gamerule doDaylightCycle false
time set 21500

#night vision if we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=5}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=10}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=11}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=14}] add musicViable
######