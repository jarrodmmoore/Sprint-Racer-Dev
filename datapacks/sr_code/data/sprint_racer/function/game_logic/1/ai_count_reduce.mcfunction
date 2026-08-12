scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] math -1
execute as @a[tag=playing] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] math 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={math=1..}] run scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] optRAIcount -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] math
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={optRAIcount=..0}] optRAIcount 1