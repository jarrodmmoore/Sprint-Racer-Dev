function sprint_racer:levels/casino_chase/map

#reset if fallen down
execute as @a[tag=playing,gamemode=adventure,scores={coord_y=..720000}] run function sprint_racer:levels/sakura_city/respawn_general
execute as @e[tag=ai,scores={coord_y=..720000}] run function sprint_racer:ai/general/die
#wow, we can just re-use this from retro synthwave without any changes. nice!

#reset if fallen in the lower part of the tornado
execute as @a[tag=playing,gamemode=adventure,x=2188,y=82,z=2452,dx=35,dy=5,dz=35,scores={check=2..,elytraTimer=..0}] run function sprint_racer:levels/casino_chase/respawn1

#reset height is higher in the second half of the tornado
execute as @a[tag=playing,gamemode=adventure,scores={check=3..,coord_y=..1100000,elytraTimer=..0}] run function sprint_racer:levels/sakura_city/respawn_general
