execute store result score #rot_yaw value run data get entity @s Rotation[0] 100
scoreboard players operation #rot_yaw value -= #9000 value
scoreboard players operation #rot_yaw value *= #-1 value
scoreboard players operation #rot_yaw value += #9000 value
execute unless score @s trans_z matches -1..1 store result entity @s Rotation[0] float 0.01 run scoreboard players get #rot_yaw value

#now tp to here!
execute rotated as @s run tp @s ~ ~ ~ ~ ~

#sound
execute at @s run playsound minecraft:block.bamboo.place master @a ~ ~ ~ 2 .5

#count how many times we've bounced
execute unless score @s trans_x matches 0 run scoreboard players add @s bounceCount 1
execute unless score @s trans_y matches 0 run scoreboard players add @s bounceCount 1
execute unless score @s trans_z matches 0 run scoreboard players add @s bounceCount 1