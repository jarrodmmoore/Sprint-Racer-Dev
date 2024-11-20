#night vision
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,scores={gameTime=..100100}] run effect give @a minecraft:night_vision 35 1 true

#netherite doors opening or closing
execute as @e[type=armor_stand,tag=sc_luna_door,scores={scl_progress=1..}] at @s run function sprint_racer:levels/space_colony_luna/doors

#route transformations based on the leading player's checkpoint or lap
execute if score global scl_lap matches 0 if score global scl_progress matches 0 if entity @e[tag=activeplayer,limit=1,scores={check=2..}] run function sprint_racer:levels/space_colony_luna/open_finish_line
execute if score global scl_progress matches 1 as @e[tag=activeplayer,tag=!finished] if score @s lapFake > global scl_lap run function sprint_racer:levels/space_colony_luna/open_route_2
execute if score global scl_progress matches 2 as @e[tag=activeplayer,tag=!finished] if score @s check matches 3.. if score @s lapFake >= global scl_lap run function sprint_racer:levels/space_colony_luna/open_route_3
execute if score global scl_progress matches 3 as @e[tag=activeplayer,tag=!finished] if score @s check matches 3.. if score @s lapFake >= global scl_lap run function sprint_racer:levels/space_colony_luna/open_route_1

#low gravity outside (only when not elytra-ing)
effect give @a[tag=playing,gamemode=!spectator,scores={elytraTimer=..0,coord_z=..28050000}] slow_falling 5 0 true
effect clear @a[tag=playing,gamemode=!spectator,scores={elytraTimer=..0,coord_z=28050001..28150000}] slow_falling
effect give @e[tag=ai,tag=activeplayer,scores={elytraTimer=..0,coord_z=..28050000}] slow_falling 5 0 true
effect clear @e[tag=ai,tag=activeplayer,scores={elytraTimer=..0,coord_z=28050001..28150000}] slow_falling

#reset if fallen down into space
execute as @a[tag=playing,gamemode=adventure,x=765,y=150,z=2761,dx=165,dy=14,dz=44] run function sprint_racer:levels/sakura_city/respawn_general

#reset if fallen in outer section
execute as @a[gamemode=adventure,tag=playing] at @s if block ~ ~-1 ~ black_concrete run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={hitboxHP=1000..}] at @s if block ~ ~-1 ~ black_concrete run function sprint_racer:ai/general/die

##########
#MAP ZONES

#brown wool = start checking!
execute as @a[gamemode=adventure,tag=playing] at @s if block ~ 5 ~ brown_wool run function sprint_racer:levels/space_colony_luna/update_map_zone

function sprint_racer:levels/space_colony_luna/map

##########