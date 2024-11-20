function sprint_racer:levels/hot_air_docks/map

#jump boost on blue blimp if switch is on
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=switchON] run effect give @a[x=-284,y=143,z=-1256,dx=6,dy=4,dz=10] minecraft:jump_boost 1 7
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=switchON] run scoreboard players set @e[tag=ai,x=-284,y=143,z=-1256,dx=6,dy=4,dz=10] aiJBIntensity 7
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=switchON] run scoreboard players set @e[tag=ai,x=-284,y=143,z=-1256,dx=6,dy=4,dz=10] aiJBTime 14

effect give @a night_vision 15 1 true

#i've mcfallen
execute as @a[gamemode=adventure,scores={elytraTimer=..0,coord_y=..1150000}] run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={coord_y=..1150000}] run function sprint_racer:ai/general/die

#quick respawn at the section where players are 100% guaranteed to fall
execute as @a[gamemode=adventure,x=-376,y=123,z=-1196,dx=25,dy=10,dz=33,scores={check=2}] run function sprint_racer:levels/hot_air_docks/respawn1