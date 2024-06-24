#I really wish I could have NoAI without losing physics :(
#I also wish I could change rotation without ruining motion :(

#store current motion
execute store result score @s dummy_x run data get entity @s Motion[0] 100000
execute store result score @s dummy_y run data get entity @s Motion[1] 100000
execute store result score @s dummy_z run data get entity @s Motion[2] 100000

#face target via tp
tp @s ~ ~ ~ ~ ~

#re-apply motion (mostly to preserve gravity)
scoreboard players remove @s dummy_y 1000
execute store result entity @s Motion[0] double .00001 run scoreboard players get @s dummy_x
execute store result entity @s Motion[1] double .00001 run scoreboard players get @s dummy_y
execute store result entity @s Motion[2] double .00001 run scoreboard players get @s dummy_z