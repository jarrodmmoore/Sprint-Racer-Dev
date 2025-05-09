#executed by a fire jet each time it moves

#set timer again
scoreboard players set @s AIBC_dir3 0


#remove the blocks from the last animation frame
fill ~ 66 ~ ~2 74 ~2 air replace lava
setblock ~1 75 ~1 air

#clone the floor first so we can drill a hole in it later
clone 8342 68 -8987 8350 68 -8987 8342 ~-1 ~1

#move back and forth
scoreboard players add @s AIBC_dir4 1
execute if score @s AIBC_dir4 matches 12.. run scoreboard players set @s AIBC_dir4 0
execute if score @s AIBC_dir4 matches 0 run tp @s 8348 ~ ~
execute if score @s AIBC_dir4 matches 1 run tp @s 8347 ~ ~
execute if score @s AIBC_dir4 matches 2 run tp @s 8346 ~ ~
execute if score @s AIBC_dir4 matches 3 run tp @s 8345 ~ ~
execute if score @s AIBC_dir4 matches 4 run tp @s 8344 ~ ~
execute if score @s AIBC_dir4 matches 5 run tp @s 8343 ~ ~
execute if score @s AIBC_dir4 matches 6 run tp @s 8342 ~ ~
execute if score @s AIBC_dir4 matches 7 run tp @s 8343 ~ ~
execute if score @s AIBC_dir4 matches 8 run tp @s 8344 ~ ~
execute if score @s AIBC_dir4 matches 9 run tp @s 8345 ~ ~
execute if score @s AIBC_dir4 matches 10 run tp @s 8346 ~ ~
execute if score @s AIBC_dir4 matches 11 run tp @s 8347 ~ ~

#clone the fire jet build thing
execute at @s run clone 8346 66 -9005 8346 66 -9005 ~1 75 ~1
execute at @s run fill ~ 66 ~ ~2 74 ~2 structure_void replace air strict
execute at @s run fill ~1 66 ~1 ~1 74 ~1 lava strict