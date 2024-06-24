#copy our rotation from the last execution
execute if entity @s[tag=!aiDontFace] store result entity @s Rotation[0] float 0.001 run scoreboard players get @s rot_yaw100
execute if entity @s[tag=!aiDontFace] store result entity @s Rotation[1] float 0.001 run scoreboard players get @s rot_pitch100

#we can just coast off the mvmt_coord_dx,dy,dz from the last execution. no need to calculate stuff again

#boost up a bit on stairs
execute if block ~ ~ ~ #minecraft:stairs if entity @s[nbt={OnGround:1b}] run tp @s ~ ~0.4 ~

#move depending on speed level
execute if entity @s[scores={elytraTimer=..0,scriptMove=..0}] run function sprint_racer:ai/general/movement/speed_level_3d/_index