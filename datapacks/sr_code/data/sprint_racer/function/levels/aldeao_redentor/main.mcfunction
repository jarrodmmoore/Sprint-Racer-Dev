function sprint_racer:levels/aldeao_redentor/map

execute as @a[tag=playing,gamemode=adventure,scores={hp=1..,coord_y=..600000}] at @s if block ~ ~ ~ water run kill @s
execute as @e[tag=ai,x=1190,y=53,z=-1236,dx=140,dy=6,dz=140] run data merge entity @s {Health:500}