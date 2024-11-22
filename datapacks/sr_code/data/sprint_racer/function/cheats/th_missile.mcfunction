#shoot a rocket
summon armor_stand ~ ~ ~ {Tags:["missile","aimMe","touhou"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:gray_concrete",count:1b,components:{"item_model":"sr/item/red_rocket"}}}]}

#rocket item_display is temporary
scoreboard players set @e[tag=setLife,distance=..3] lifespan 3
tag @e[tag=setLife,distance=..3] remove setLife

execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=01a] run tag @e[tag=aimMe,type=armor_stand,limit=1,sort=nearest] add hurryUp
execute if entity @s[tag=itemCyan] run tag @e[tag=aimMe,type=armor_stand,limit=1,sort=nearest] add itemCyan

tp @e[tag=aimMe,limit=1,type=armor_stand,sort=nearest] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=aimMe,limit=1,type=armor_stand,sort=nearest] playerID = @s playerID
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] as @e[tag=aimMe,limit=1,type=armor_stand,sort=nearest] run function sprint_racer:cheats/homing_entity_chance_rare
tag @e[tag=aimMe,limit=1,type=armor_stand,sort=nearest] remove aimMe