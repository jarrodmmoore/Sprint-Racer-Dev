function sprint_racer:levels/sakura_city/map

execute as @a[tag=playing,gamemode=adventure,scores={hp=1..},x=517,y=55,z=776,dx=140,dy=5,dz=140] at @s if block ~ ~ ~ water run function sprint_racer:levels/sakura_city/respawn_general
execute as @a[tag=playing,gamemode=adventure,scores={hp=1..},x=517,y=55,z=776,dx=140,dy=5,dz=140,nbt={OnGround:1b}] at @s run function sprint_racer:levels/sakura_city/respawn_general

execute as @e[tag=ai,scores={hitboxHP=1000..},x=517,y=55,z=776,dx=140,dy=5,dz=140] at @s if block ~ ~-1 ~ water run kill @s
execute as @e[tag=ai,scores={hitboxHP=1000..},x=517,y=55,z=776,dx=140,dy=5,dz=140,nbt={OnGround:1b}] at @s run kill @s