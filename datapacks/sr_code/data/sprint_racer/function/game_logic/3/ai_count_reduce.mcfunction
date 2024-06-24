scoreboard players set @e[tag=w,type=armor_stand] math -1
execute as @a[tag=playing] run scoreboard players add @e[tag=w,type=armor_stand] math 1

execute if entity @e[tag=w,scores={math=1..}] run scoreboard players operation @e[tag=w,type=armor_stand] optBAIcount -= @e[tag=w,limit=1] math
scoreboard players set @e[tag=w,scores={optBAIcount=..0}] optBAIcount 1