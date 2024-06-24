function sprint_racer:levels/green_labyrinth/map

execute if entity @e[tag=w,type=armor_stand,scores={mapZone=1}] if entity @e[tag=activeplayer,scores={lapFake=2..}] run function sprint_racer:levels/green_labyrinth/open_yellow_route
execute if entity @e[tag=w,type=armor_stand,scores={mapZone=2}] if entity @e[tag=activeplayer,scores={lapFake=3..}] run function sprint_racer:levels/green_labyrinth/open_red_route

#fall out of bounds, get reset since it's very hard to recover after falling to the floor
execute as @a[tag=playing,scores={recDirection=10,hp=1..},nbt={OnGround:1b},gamemode=!spectator] at @s if block ~ ~-1 ~ grass_block run function sprint_racer:levels/green_labyrinth/respawn1

#respawn when falling into holes
execute as @a[gamemode=adventure,x=1337,y=57,z=873,dx=5,dy=2,dz=6,nbt={OnGround:1b}] at @s run function sprint_racer:levels/green_labyrinth/respawn2
execute as @a[gamemode=adventure,x=1365,y=57,z=841,dx=5,dy=2,dz=3,nbt={OnGround:1b}] at @s run function sprint_racer:levels/green_labyrinth/respawn3
execute as @a[gamemode=adventure,x=1317,y=59,z=893,dx=35,dy=2,dz=7] at @s run function sprint_racer:levels/green_labyrinth/respawn4

execute as @a[gamemode=adventure,x=1326,y=59,z=834,dx=30,dy=20,dz=13,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ grass_block run function sprint_racer:levels/green_labyrinth/respawn5
execute as @a[gamemode=adventure,x=1327,y=59,z=834,dx=30,dy=20,dz=13,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ oak_leaves run function sprint_racer:levels/green_labyrinth/respawn5