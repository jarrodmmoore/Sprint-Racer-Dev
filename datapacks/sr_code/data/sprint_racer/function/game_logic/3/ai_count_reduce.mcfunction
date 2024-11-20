scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math -1
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={math=1..}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] optBAIcount -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] math
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optBAIcount=..0}] optBAIcount 1