tp @a[tag=!dontWarp,tag=!dontSetGamemode] 821 225 2858
tp @a[tag=!dontWarp,tag=dontSetGamemode] 794 168 2858

scoreboard players set @e[tag=w,type=armor_stand] startType 2

scoreboard players set @a mapZone 0
scoreboard players set @e[tag=w,type=armor_stand] mapZone 0

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,type=armor_stand] check 3
time set 22000

#night vision if we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=10}] add musicViable
######

scoreboard players set global scl_progress 0
scoreboard players set global scl_lap 0