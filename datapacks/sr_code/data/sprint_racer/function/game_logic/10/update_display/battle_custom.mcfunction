execute positioned 1565 82 369 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":6099}}}
execute positioned 1565 79 369 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":7099}}}
execute positioned 1565 82 372 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":8099}}}
execute positioned 1565 79 372 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9099}}}

tag @e[tag=focusT] remove focusT

execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID = @s customTrackBID
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] tvPoolNum
tag @e[limit=1,sort=random,tag=customtrack,tag=custombattle,scores={customDummyBID=0}] add focusT