function sprint_racer:levels/magna_desert/map

execute as @a[tag=playing,gamemode=adventure,x=509,y=43,z=1046,dx=46,dy=33,dz=30,scores={check=0,elytraTimer=..0}] at @s run function sprint_racer:levels/magna_desert/respawn1
execute as @a[tag=playing,gamemode=adventure,scores={check=1}] at @s if block ~ ~ ~ water if block ~ 59 ~ water run function sprint_racer:levels/magna_desert/respawn2
execute as @a[tag=playing,gamemode=adventure,scores={check=2}] at @s if block ~ ~ ~ water if block ~ 59 ~ water run function sprint_racer:levels/magna_desert/respawn3

execute as @e[tag=ai,x=509,y=43,z=1046,dx=46,dy=33,dz=30,scores={check=0}] at @s run kill @s
execute as @e[tag=ai,scores={check=..2}] at @s if block ~ ~-1 ~ water if block ~ 59 ~ water run kill @s