tp @a[tag=!dontWarp] 1570 111 1136

weather rain
tag @e[tag=w,type=armor_stand] add raining
gamerule doDaylightCycle false
time set 6000

#this is a really big arena but I think it can handle AI...
#tag @e[tag=w,type=armor_stand] add noAItrack

######
#MUSIC
tag @e[tag=random,type=armor_stand,scores={rNumber=7}] add musicViable
tag @e[tag=random,type=armor_stand,scores={rNumber=13}] add musicViable
######