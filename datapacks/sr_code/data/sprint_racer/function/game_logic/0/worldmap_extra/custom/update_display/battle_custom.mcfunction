#identify the track we're interested in
tag @e[tag=wmCustomT] remove wmCustomT
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID = @s customTrackBID
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID -= @e[tag=w,limit=1] wmCustomNum
tag @e[limit=1,sort=random,tag=customtrack,tag=custombattle,scores={customDummyBID=0}] add wmCustomT

#7XXX and 9XXX get replaced for bottom text

tag @e[tag=wmCustomStand] add trackminimap

#default image
#top two are always the same
execute positioned 2480 103 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":6099}}}
execute positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":7099}}}
execute positioned 2480 103 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":8099}}}
execute positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9099}}}
scoreboard players set @e[tag=wmCustomStand] worldmapID -20

#"small" text overlay
execute if entity @e[tag=wmCustomT,tag=trackSmall] positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":7096}}}
execute if entity @e[tag=wmCustomT,tag=trackSmall] positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9096}}}
execute if entity @e[tag=wmCustomT,tag=trackSmall] run scoreboard players set @e[tag=wmCustomStand] worldmapID -21

#"medium" text overlay
execute if entity @e[tag=wmCustomT,tag=trackMedium] positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":7097}}}
execute if entity @e[tag=wmCustomT,tag=trackMedium] positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9097}}}
execute if entity @e[tag=wmCustomT,tag=trackMedium] run scoreboard players set @e[tag=wmCustomStand] worldmapID -22

#"large" text overlay
execute if entity @e[tag=wmCustomT,tag=trackLarge] positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":7098}}}
execute if entity @e[tag=wmCustomT,tag=trackLarge] positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9098}}}
execute if entity @e[tag=wmCustomT,tag=trackLarge] run scoreboard players set @e[tag=wmCustomStand] worldmapID -23



#this really says a lot about our
#bottom text

execute if entity @e[tag=wmCustomT,tag=customPreview] run scoreboard players set @e[tag=wmCustomStand] worldmapID -24