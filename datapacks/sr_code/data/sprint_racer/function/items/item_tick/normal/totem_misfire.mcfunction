#FOR THE LOLS

#spawn rocket (item_display riding an armor stand)
summon armor_stand ~ ~1 ~ {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
execute at @s positioned ~ ~1.6 ~ as @e[type=armor_stand,tag=aimMe] run tp @s ~ ~ ~ ~ ~

#rocket item_display is temporary
scoreboard players set @e[tag=setLife,distance=..3,type=item_display] lifespan 3
tag @e[tag=setLife,distance=..3,type=item_display] remove setLife

#we did this
execute if entity @s[tag=playerCyan] run tag @e[tag=aimMe,limit=1] add itemCyan
execute if entity @s[scores={speedlevel=7..,moveState=2}] run tag @e[tag=aimMe] add hurryUp
execute if entity @s[scores={speedBoost=1..}] run tag @e[tag=aimMe] add hurryUp
scoreboard players operation @e[tag=aimMe] playerID = @s playerID
tag @e[tag=aimMe] remove aimMe

execute unless entity @s[scores={speedlevel=7..,moveState=2}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.3
execute if entity @s[scores={speedlevel=7..,moveState=2}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.7
#playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .7
playsound minecraft:entity.pig.death master @a
particle totem_of_undying ^ ^1.5 ^.5 0.2 0.2 0.2 .01 20
particle explosion ^ ^1.5 ^.5 0.2 0.2 0.2 .01 1