#important tag is "wmDlcStand"

scoreboard players set @e[tag=wmDlcStand] worldmapID 1017

execute positioned 2460 103 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":6017}}}
execute positioned 2460 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":7017}}}
execute positioned 2460 103 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":8017}}}
execute positioned 2460 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9017}}}