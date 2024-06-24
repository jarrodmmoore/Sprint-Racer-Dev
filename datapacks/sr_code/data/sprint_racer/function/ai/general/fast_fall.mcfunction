#store current motion
execute store result score @s math run data get entity @s Motion[1] 100000

#re-apply motion (mostly to preserve gravity)
scoreboard players remove @s math 20000
execute store result entity @s Motion[1] double .00001 run scoreboard players get @s math