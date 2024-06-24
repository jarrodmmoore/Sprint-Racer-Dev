clone 453 59 -1303 459 61 -1289 453 62 -1303

fill 452 63 -1239 472 63 -1238 air replace smooth_stone_slab
fill 452 63 -1237 472 63 -1237 air replace smooth_stone_slab
fill 452 64 -1239 472 64 -1239 air replace smooth_stone_slab

#change CP2
execute as @e[type=marker,tag=cb_stadium_only] at @s run tp @s ~ 33 ~
tag @e[type=marker,tag=cb_stadium_only] remove checkpoint
tag @e[type=marker,tag=cb_stadium_only] remove posCalc
execute as @e[type=marker,tag=cb_non_stadium] at @s run tp @s ~ 63 ~
tag @e[type=marker,tag=cb_non_stadium] add checkpoint
tag @e[type=marker,tag=cb_non_stadium] add posCalc

execute as @e[type=marker,tag=cb_move_nodes] at @s run tp @s ~ 63 ~
scoreboard players set @e[type=marker,tag=cb_route_change] AIBC_dir1 21
scoreboard players set @e[type=marker,tag=cb_finishline] nCheck 4