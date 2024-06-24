tp @a[tag=!dontWarp] -1358 100 -1392

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,type=armor_stand] check 4
time set 6000

#switch is off by default
tag @e[tag=w,type=armor_stand] remove switchON

#set a flag indicating that we need to close the shortcut once the proper chunks are loaded
scoreboard players set #praiadeabril value 0

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=19}] add setBGM
#tag @e[tag=random,type=armor_stand,scores={rNumber=9}] add musicViable
#tag @e[tag=random,type=armor_stand,scores={rNumber=13}] add musicViable
######