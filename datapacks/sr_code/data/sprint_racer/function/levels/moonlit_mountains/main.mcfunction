function sprint_racer:levels/moonlit_mountains/map

#reset players that fail the elytra bit
execute as @a[gamemode=adventure,x=2222,y=185,z=-990,dx=30,dy=18,dz=50,scores={check=3..5}] if entity @s[nbt={OnGround:1b}] run function sprint_racer:levels/moonlit_mountains/respawn1

#reset if fallen down
execute as @a[gamemode=adventure,scores={coord_y=..1400000}] run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={coord_y=..1400000}] run function sprint_racer:ai/general/die