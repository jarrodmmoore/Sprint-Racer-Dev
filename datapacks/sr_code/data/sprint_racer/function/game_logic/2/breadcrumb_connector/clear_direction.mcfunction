scoreboard players set @s AIBC_dir1 0
scoreboard players set @s AIBC_dir2 0
scoreboard players set @s AIBC_dir3 0
scoreboard players set @s AIBC_dir4 0

tag @s add AIBC_deadend

playsound minecraft:block.lava.extinguish master @a[gamemode=creative] ~ ~ ~ 2
particle large_smoke ~ ~.2 ~ 0.2 0.2 0.2 0.01 10 force @a[gamemode=creative]