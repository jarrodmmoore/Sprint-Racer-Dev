#clear all temporary data from scoreboard.dat

#this makes scoreboard.dat 10x smaller. no, seriously

#count up
scoreboard players add #clearCacheProgress value 1


#rNumber
execute if score #clearCacheProgress value matches 1 as @e[tag=random,x=1548,y=155,z=406,distance=..1] if score @s rNumber matches -2147483648..2147483647 run scoreboard players operation @s AIBC_dir1 = @s rNumber
execute if score #clearCacheProgress value matches 1 run scoreboard players reset * rNumber
execute if score #clearCacheProgress value matches 1 as @e[tag=random,x=1548,y=155,z=406,distance=..1] if score @s AIBC_dir1 matches -2147483648..2147483647 run scoreboard players operation @s rNumber = @s AIBC_dir1

#checkpoint
execute if score #clearCacheProgress value matches 2 run scoreboard players reset * check_y_min
execute if score #clearCacheProgress value matches 3 run scoreboard players reset * check_y_max
execute if score #clearCacheProgress value matches 4 run scoreboard players reset * visualXoffset
execute if score #clearCacheProgress value matches 5 run scoreboard players reset * visualYoffset
execute if score #clearCacheProgress value matches 6 run scoreboard players reset * visualZoffset
execute if score #clearCacheProgress value matches 7 run scoreboard players reset * visualYaw
execute if score #clearCacheProgress value matches 8 run scoreboard players reset * visualPitch
execute if score #clearCacheProgress value matches 8 run scoreboard players reset * visualLength
#w and custom tracks use "check" to store some data, so make sure they hold on to it
execute if score #clearCacheProgress value matches 9 as @e[type=armor_stand] if score @s check matches -2147483648..2147483647 run scoreboard players operation @s AIBC_id = @s check
execute if score #clearCacheProgress value matches 9 run scoreboard players reset * check
execute if score #clearCacheProgress value matches 9 as @e[type=armor_stand] if score @s AIBC_id matches -2147483648..2147483647 run scoreboard players operation @s check = @s AIBC_id

#finish line
execute if score #clearCacheProgress value matches 9 run scoreboard players reset * nCheck

#ai breadcrumb
execute if score #clearCacheProgress value matches 10 run scoreboard players reset * AIBC_dir1
execute if score #clearCacheProgress value matches 11 run scoreboard players reset * AIBC_dir2
execute if score #clearCacheProgress value matches 12 run scoreboard players reset * AIBC_dir3
execute if score #clearCacheProgress value matches 13 run scoreboard players reset * AIBC_dir4
execute if score #clearCacheProgress value matches 14 run scoreboard players reset * AIBC_hook
execute if score #clearCacheProgress value matches 15 run scoreboard players reset * AIBC_spread
execute if score #clearCacheProgress value matches 16 run scoreboard players reset * AIBC_event
execute if score #clearCacheProgress value matches 17 run scoreboard players reset * AIBC_condition
execute if score #clearCacheProgress value matches 18 run scoreboard players reset * AIBC_id

#item chests
execute if score #clearCacheProgress value matches 19 run scoreboard players reset * itemchestSeedA
execute if score #clearCacheProgress value matches 20 run scoreboard players reset * itemchestSeedB
execute if score #clearCacheProgress value matches 21 run scoreboard players reset * itemchestSeedR
#playerRequire also needs to be cleared, but now's not a good time. we'll do it at game_logic/0/_initialize instead.

#jump boost
execute if score #clearCacheProgress value matches 22 run scoreboard players reset * jump

#scripted sequence
execute if score #clearCacheProgress value matches 23 run scoreboard players reset * scriptMove
execute if score #clearCacheProgress value matches 23 run scoreboard players set @a scriptMove 0

#teleporter
execute if score #clearCacheProgress value matches 24 run scoreboard players reset * teleport