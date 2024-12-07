#left side
summon armor_stand 1582 156 2919 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1582 156 2910 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1582 156 2904 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1582 156 2897 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1582 156 2885 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1582 156 2878 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}

execute as @e[tag=aimMe,limit=6,type=armor_stand] at @s run tp @s ~ ~ ~ -90 0
scoreboard players set @e[tag=aimMe,limit=6,type=armor_stand] playerID -1

execute as @e[tag=aimMe,limit=6,type=armor_stand] at @s run function sprint_racer:explode_sound_effect {volume:1.5,pitch:1.7}
execute as @e[tag=aimMe,limit=6,type=armor_stand] at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .7
execute as @e[tag=aimMe,limit=6,type=armor_stand] at @s run particle explosion ^ ^1.5 ^.5 0.2 0.2 0.2 .01 1

tag @e[tag=aimMe,limit=6,type=armor_stand] remove aimMe

#right side
summon armor_stand 1607 156 2919 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1607 156 2910 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1607 156 2904 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1607 156 2897 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1607 156 2885 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
summon armor_stand 1607 156 2878 {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}

execute as @e[tag=aimMe,limit=6,type=armor_stand] at @s run tp @s ~ ~ ~ 90 0
scoreboard players set @e[tag=aimMe,limit=6,type=armor_stand] playerID -1

execute as @e[tag=aimMe,limit=6,type=armor_stand] at @s run function sprint_racer:explode_sound_effect {volume:1.5,pitch:1.7}
execute as @e[tag=aimMe,limit=6,type=armor_stand] at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~-1 ~ 1 .7
execute as @e[tag=aimMe,limit=6,type=armor_stand] at @s run particle explosion ^ ^1.5 ^.5 0.2 0.2 0.2 .01 1

tag @e[tag=aimMe,limit=6,type=armor_stand] remove aimMe

#rocket item_display is temporary
scoreboard players set @e[tag=setLife,type=item_display] lifespan 3
tag @e[tag=setLife,type=item_display] remove setLife