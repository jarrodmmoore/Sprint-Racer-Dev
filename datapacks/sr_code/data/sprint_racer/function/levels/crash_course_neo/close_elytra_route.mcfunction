#nodes
execute as @e[tag=ccneo_pad2] at @s run tp @s ~ 61 ~
scoreboard players set @e[tag=ccneo_bc3,type=marker] AIBC_dir1 61

#blocks
clone 527 59 -33 529 59 -29 527 60 -33
fill 527 61 -36 527 67 -26 structure_void replace white_stained_glass
fill 528 61 -37 538 67 -37 white_stained_glass replace structure_void
fill 529 61 -34 529 62 -28 air