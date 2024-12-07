clear @s dropper[custom_data~{elite2:1b}] 1

#spawn rocket (item_display riding an armor stand)
summon armor_stand ~ ~1 ~ {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}
execute at @s positioned ~ ~1.6 ~ as @e[type=armor_stand,distance=..2,tag=aimMe] run tp @s ~ ~ ~ ~ ~

execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=01a] run tag @e[tag=aimMe,limit=1,sort=nearest,type=armor_stand,distance=..2] add hurryUp
execute if entity @s[tag=playerCyan] run tag @e[tag=aimMe,limit=1,type=armor_stand,distance=..2] add itemCyan

#tp @e[tag=aimMe,limit=1,sort=nearest] @s
scoreboard players operation @e[tag=aimMe,limit=1,type=armor_stand,distance=..2] playerID = @s playerID
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] as @e[tag=aimMe,limit=1,type=armor_stand,distance=..3] run function sprint_racer:cheats/homing_entity_chance_rare
tag @e[tag=aimMe,limit=1,type=armor_stand,distance=..2] remove aimMe

#rocket item_display is temporary
scoreboard players set @e[tag=setLife,type=item_display,distance=..3] lifespan 3
tag @e[tag=setLife,type=item_display,distance=..3] remove setLife

execute unless entity @s[scores={speedlevel=7..,moveState=2}] run function sprint_racer:explode_sound_effect {volume:1,pitch:1.3}
execute if entity @s[scores={speedlevel=7..,moveState=2}] run function sprint_racer:explode_sound_effect {volume:1.5,pitch:1.5}
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .7
particle explosion ^ ^1.5 ^.5 0.2 0.2 0.2 .01 1 force
particle explosion ^ ^1.5 ^2 0.2 0.2 0.2 .01 1 force @s

scoreboard players set @s inputCooldown 15