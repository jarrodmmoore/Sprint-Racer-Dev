clone 453 56 -1303 459 58 -1289 453 62 -1303

fill 452 63 -1239 472 63 -1238 minecraft:smooth_stone_slab[type=double] replace air
fill 452 63 -1237 472 63 -1237 minecraft:smooth_stone_slab[type=bottom] replace air
fill 452 64 -1239 472 64 -1239 minecraft:smooth_stone_slab[type=bottom] replace air

#change CP2
execute as @e[type=marker,tag=cb_stadium_only] at @s run tp @s ~ 63 ~
tag @e[type=marker,tag=cb_stadium_only] add checkpoint
tag @e[type=marker,tag=cb_stadium_only] add posCalc
execute as @e[type=marker,tag=cb_non_stadium] at @s run tp @s ~ 33 ~
tag @e[type=marker,tag=cb_non_stadium] remove checkpoint
tag @e[type=marker,tag=cb_non_stadium] remove posCalc

execute as @e[type=marker,tag=cb_move_nodes] at @s run tp @s ~ 43 ~
scoreboard players set @e[type=marker,tag=cb_route_change] AIBC_dir1 426
scoreboard players set @e[type=marker,tag=cb_finishline] nCheck 2