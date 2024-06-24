function sprint_racer:levels/petra_resort/map

#reset if fallen in water
execute as @a[x=57,y=59,z=-1343,distance=..17,tag=playing,gamemode=adventure,scores={check=1..2}] at @s if block ~ ~ ~ water run function sprint_racer:levels/petra_resort/respawn1

#reset if fallen in cave
execute as @a[x=88,y=59,z=-1321,dx=23,dy=3,dz=21,tag=playing,gamemode=adventure,scores={check=4..}] at @s run function sprint_racer:levels/petra_resort/respawn2