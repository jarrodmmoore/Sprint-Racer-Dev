#shoot missile

#50% chance to shoot at the target's feet instead for splash damage (only if we're trying to lead the shot)
scoreboard players set @s rNumber 1
scoreboard players operation @s rNumber = @e[limit=1,tag=random,scores={rNumber=1..2}] rNumber
execute if entity @s[scores={rNumber=2}] as @e[tag=looktarget,type=marker] at @s run tp @s ~ ~-.5 ~


#summon the missile, aimed at the looktarget
#summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"gray_concrete",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],Tags:["missile","aimMe"]}
summon armor_stand ~ ~1 ~ {Tags:["missile","aimMe"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:gray_concrete",count:1b,components:{"custom_model_data":1111111}}}]}

execute if entity @e[tag=looktarget] as @e[tag=aimMe] at @s run tp @s ~ ~1.6 ~ facing entity @e[limit=1,tag=looktarget] feet
execute unless entity @e[tag=looktarget] at @s run tp @e[tag=aimMe] ~ ~1.6 ~ ~ ~
execute if entity @s[tag=playerCyan] run tag @e[tag=aimMe,limit=1] add itemCyan
scoreboard players operation @e[tag=aimMe] playerID = @s playerID
tag @e[tag=aimMe] remove aimMe

#rocket item_display is temporary
scoreboard players set @e[tag=setLife] lifespan 3
tag @e[tag=setLife] remove setLife

#particle and sound effect
execute unless entity @s[scores={speedlevel=7..,moveState=2}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.5
execute if entity @s[scores={speedlevel=7..,moveState=2}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.7
particle explosion ^ ^1.5 ^.5 0.2 0.2 0.2 .01 1


tag @e[tag=looktarget] remove looktarget

scoreboard players set @s inputCooldown 15
scoreboard players set @s aiActICooldown 10
scoreboard players remove @s aiHasItem2 1
scoreboard players remove @s aiHasProjectile 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem2=1..}] aiHoldingItem 2
scoreboard players set @s[scores={aiHasItem2=1..}] aiActICooldown 10