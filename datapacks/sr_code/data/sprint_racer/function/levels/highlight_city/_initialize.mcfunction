tp @a[tag=!dontWarp] 571 85 376

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
gamerule doDaylightCycle false



#33% chance of being nighttime
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..3}] rNumber
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=..2}] run time set 2500
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=3..}] run time set 18000

#night vision if we're playing in free roam mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=3..}] run tag @a[tag=dontSetGamemode] add fr_nightvision

######
#MUSIC
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=..2}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add musicViable
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=..2}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=6}] add musicViable
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=3..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=10}] add musicViable
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={math=3..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11}] add musicViable
######