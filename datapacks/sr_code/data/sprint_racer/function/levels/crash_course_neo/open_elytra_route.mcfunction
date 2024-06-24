#nodes
execute as @e[tag=ccneo_pad2] at @s run tp @s ~ 51 ~
scoreboard players set @e[tag=ccneo_bc3,type=marker] AIBC_dir1 67

#blocks
fill 527 60 -33 529 60 -29 gray_concrete
fill 527 61 -36 527 67 -26 white_stained_glass replace structure_void
fill 528 61 -37 538 67 -37 structure_void replace white_stained_glass
clone 529 57 -34 529 58 -28 529 61 -34