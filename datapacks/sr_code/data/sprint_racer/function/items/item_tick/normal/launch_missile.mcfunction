clear @s dispenser[custom_data~{no2:1b}] 1

#spawn rocket (item_display riding an armor stand)
summon armor_stand ~ ~1 ~ {Tags:["missile","aimMe"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:gray_concrete",count:1b,components:{"custom_model_data":1111111}}}]}
execute at @s positioned ~ ~1.6 ~ as @e[type=armor_stand,tag=aimMe] run tp @s ~ ~ ~ ~ ~

#summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"gray_concrete",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],Tags:["missile","aimMe"]}

execute if entity @e[type=armor_stand,tag=cheats,tag=01a] run tag @e[tag=aimMe,limit=1] add hurryUp
execute if entity @s[tag=playerCyan] run tag @e[tag=aimMe,limit=1] add itemCyan

#tp @e[tag=aimMe,limit=1] @s
scoreboard players operation @e[tag=aimMe,limit=1] playerID = @s playerID
execute if entity @e[type=armor_stand,tag=cheats,tag=11a] as @e[tag=aimMe,limit=1] run function sprint_racer:cheats/homing_entity_chance_rare
tag @e[tag=aimMe,limit=1] remove aimMe

#rocket item_display is temporary
scoreboard players set @e[tag=setLife] lifespan 3
tag @e[tag=setLife] remove setLife

execute unless entity @s[scores={speedlevel=7..,moveState=2}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.5
execute if entity @s[scores={speedlevel=7..,moveState=2}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.7
particle explosion ^ ^1.5 ^.5 0.2 0.2 0.2 .01 1 force
particle explosion ^ ^1.5 ^2 0.2 0.2 0.2 .01 1 force @s

scoreboard players set @s inputCooldown 15