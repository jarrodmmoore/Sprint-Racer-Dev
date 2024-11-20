#identify the track we're interested in
tag @e[tag=wmCustomT] remove wmCustomT
execute as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID = @s customTrackID
execute as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] wmCustomNum
tag @e[limit=1,sort=random,tag=customtrack,tag=customrace,scores={customDummyID=0}] add wmCustomT

#3XXX and 5XXX get replaced for bottom text

tag @e[tag=wmCustomStand] add trackminimap

#default image
#top two are always the same
execute positioned 2480 103 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":2099}}}
execute positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":3099}}}
execute positioned 2480 103 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":4099}}}
execute positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5099}}}
scoreboard players set @e[tag=wmCustomStand] worldmapID -10

#"novice" text overlay
execute if entity @e[tag=wmCustomT,tag=trackNovice] positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":3095}}}
execute if entity @e[tag=wmCustomT,tag=trackNovice] positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5095}}}
execute if entity @e[tag=wmCustomT,tag=trackNovice] run scoreboard players set @e[tag=wmCustomStand] worldmapID -11

#"intermediate" text overlay
execute if entity @e[tag=wmCustomT,tag=trackIntermed] positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":3096}}}
execute if entity @e[tag=wmCustomT,tag=trackIntermed] positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5096}}}
execute if entity @e[tag=wmCustomT,tag=trackIntermed] run scoreboard players set @e[tag=wmCustomStand] worldmapID -12

#"expert" text overlay
execute if entity @e[tag=wmCustomT,tag=trackExpert] positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":3097}}}
execute if entity @e[tag=wmCustomT,tag=trackExpert] positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5097}}}
execute if entity @e[tag=wmCustomT,tag=trackExpert] run scoreboard players set @e[tag=wmCustomStand] worldmapID -13

#"master" text overlay
execute if entity @e[tag=wmCustomT,tag=trackMaster] positioned 2480 100 266 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":3098}}}
execute if entity @e[tag=wmCustomT,tag=trackMaster] positioned 2480 100 269 run data merge entity @e[type=minecraft:item_frame,limit=1,sort=nearest] {Invulnerable:1b,Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":5098}}}
execute if entity @e[tag=wmCustomT,tag=trackMaster] run scoreboard players set @e[tag=wmCustomStand] worldmapID -14


#this really says a lot about our
#bottom text

execute if entity @e[tag=wmCustomT,tag=customPreview] run scoreboard players set @e[tag=wmCustomStand] worldmapID -15