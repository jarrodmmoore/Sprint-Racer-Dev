tp @a[tag=!dontWarp,tag=!dontSetGamemode] 1658 150 2220
tp @a[tag=!dontWarp,tag=dontSetGamemode] 1660 105 2210

time set 18000
scoreboard players set @e[tag=w,type=armor_stand] startType 4

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=10}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=17}] add musicViable
######