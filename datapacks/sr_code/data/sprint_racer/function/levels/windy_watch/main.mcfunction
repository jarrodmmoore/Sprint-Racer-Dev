function sprint_racer:levels/windy_watch/map

kill @a[tag=playing,gamemode=!spectator,x=1400,y=1,z=607,dx=300,dy=60,dz=300,scores={hp=1..}]
execute as @e[tag=ai,x=1400,y=1,z=607,dx=300,dy=60,dz=300] run data merge entity @s {Health:500}