function sprint_racer:levels/scorched_sands/map

kill @a[tag=playing,gamemode=!spectator,x=1450,y=1,z=978,dx=300,dy=60,dz=300,scores={hp=1..}]
execute as @e[tag=ai,x=1450,y=1,z=978,dx=300,dy=60,dz=300] run data merge entity @s {Health:500}