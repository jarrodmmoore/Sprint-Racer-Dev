#do this again in 5 ticks
scoreboard players set @s customTrackTime 5

#using "age" to count the number of steps to the next junction
#when below 0, we must choose a new direction
scoreboard players remove @s age 1
execute if score @s age matches ..0 run function sprint_racer:levels/minotaur_maze/minotaur/pick_new_direction

#no movement direction? just sit idle for a bit
execute unless score @s lastTeleport matches 1..4 run return 0
#=====

#ok, now we need to move. let's go 1 block at a time
execute if score @s lastTeleport matches 1 run tp @s ~1 ~ ~ -90 0
execute if score @s lastTeleport matches 2 run tp @s ~ ~ ~1 0 0
execute if score @s lastTeleport matches 3 run tp @s ~-1 ~ ~ 90 0
execute if score @s lastTeleport matches 4 run tp @s ~ ~ ~-1 180 0