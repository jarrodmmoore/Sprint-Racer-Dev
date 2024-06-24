#re-apply motion (mostly to preserve gravity)
#scoreboard players remove @s dummy_y 1000
execute store result entity @s Motion[0] double .00001 run scoreboard players get @s dummy_x
execute store result entity @s Motion[1] double .00001 run scoreboard players get @s dummy_y
execute store result entity @s Motion[2] double .00001 run scoreboard players get @s dummy_z