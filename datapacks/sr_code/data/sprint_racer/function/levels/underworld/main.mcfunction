function sprint_racer:levels/underworld/map

effect give @a night_vision 15 1 true

#warps
execute as @e[type=!area_effect_cloud,x=39,y=18,z=2364,dx=10,dy=6,dz=4] at @s run tp @s ~ ~ ~-100
execute as @e[type=!area_effect_cloud,x=99,y=18,z=2364,dx=10,dy=6,dz=4] at @s run tp @s ~ ~ ~-100

execute as @e[type=!area_effect_cloud,x=39,y=18,z=2244,dx=10,dy=6,dz=4] at @s run tp @s ~ ~ ~100
execute as @e[type=!area_effect_cloud,x=99,y=18,z=2244,dx=10,dy=6,dz=4] at @s run tp @s ~ ~ ~100