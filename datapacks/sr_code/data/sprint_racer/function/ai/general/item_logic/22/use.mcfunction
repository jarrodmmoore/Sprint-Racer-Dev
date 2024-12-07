#shoot homing missile

#summon the missile, aimed at the looktarget
summon armor_stand ~ ~1 ~ {Tags:["missile","aimMe","homing"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:light_gray_concrete",count:1b,components:{"item_model":"sr/item/purple_rocket"}}}]}

execute if entity @e[tag=looktarget] as @e[tag=aimMe] at @s run tp @s ~ ~1.6 ~ facing entity @e[limit=1,tag=looktarget] feet
execute unless entity @e[tag=looktarget] at @s run tp @e[tag=aimMe] ~ ~1.6 ~ ~ ~
execute if entity @s[tag=playerCyan] run tag @e[tag=aimMe,limit=1] add itemCyan
scoreboard players operation @e[tag=aimMe] playerID = @s playerID
tag @e[tag=aimMe] remove aimMe


#particle and sound effect
execute unless entity @s[scores={speedlevel=7..,moveState=2}] run function sprint_racer:explode_sound_effect {volume:1,pitch:1.3}
execute if entity @s[scores={speedlevel=7..,moveState=2}] run function sprint_racer:explode_sound_effect {volume:1.5,pitch:1.5}
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .7
particle explosion ^ ^1.5 ^.5 0.2 0.2 0.2 .01 1

#rocket item_display is temporary
scoreboard players set @e[tag=setLife] lifespan 3
tag @e[tag=setLife] remove setLife

#look at target for a moment
scoreboard players set #setTime value 10
execute facing entity @e[limit=1,tag=looktarget] feet run function sprint_racer:ai/general/movement/face_direction_temporarily

tag @e[tag=looktarget] remove looktarget

scoreboard players set @s inputCooldown 15
scoreboard players set @s aiActICooldown 10
scoreboard players remove @s aiHasItem22 1
scoreboard players remove @s aiHasProjectile 1
scoreboard players remove @s aiHasElite 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem22=1..}] aiHoldingItem 22
scoreboard players set @s[scores={aiHasItem22=1..}] aiActICooldown 10