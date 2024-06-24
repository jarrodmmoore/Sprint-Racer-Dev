tp @a[tag=!dontWarp,tag=!dontSetGamemode] 413 75 -899
tp @a[tag=!dontWarp,tag=dontSetGamemode] 427 42 -913

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,type=armor_stand] check 3
time set 6000

#night vision is we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=12}] add musicViable
######