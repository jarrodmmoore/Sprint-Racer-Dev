function sprint_racer:levels/cinder_caverns/map

scoreboard players set @a[scores={check=2..},x=325,y=25,z=548,dx=35,dy=30,dz=85] recDirection 1
scoreboard players set @a[scores={check=2..},x=325,y=25,z=533,dx=84,dy=30,dz=15] recDirection 3

#show players how to navigate the city
execute if score global gameState matches 1 run scoreboard players set @a[scores={check=1,coord_z=5200000..}] showCheckNav 4