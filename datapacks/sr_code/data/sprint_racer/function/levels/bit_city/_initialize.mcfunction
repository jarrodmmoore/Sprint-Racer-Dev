tp @a[tag=!dontWarp] -2227 173 -1905

gamerule doDaylightCycle false
time set 16000

#night vision is we're playing in free roam mode
tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=5}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=10}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=11}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=14}] add musicViable
######