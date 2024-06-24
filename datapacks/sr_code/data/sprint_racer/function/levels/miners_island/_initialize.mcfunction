tp @a[tag=!dontWarp] 48 90 -706

scoreboard players set @e[tag=w,type=armor_stand] lap 4
scoreboard players set @e[tag=w,type=armor_stand] check 4
gamerule doDaylightCycle false
time set 630

scoreboard objectives add gerald dummy



######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=3}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=7}] add musicViable
######