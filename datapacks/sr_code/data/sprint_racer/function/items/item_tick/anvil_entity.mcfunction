scoreboard players add @s age 1

tag @s add self

execute if entity @s[scores={age=1}] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 .9

execute if entity @s[tag=lockedon] run tp @s @e[limit=1,sort=nearest,tag=anvilPath,distance=..5]
execute unless entity @e[distance=..5,tag=anvilPath] run tag @s remove lockedon
execute if entity @s[tag=lockedon] run kill @e[limit=1,sort=nearest,tag=anvilPath,distance=..5]

#locked-on anvils can collide in mid-air, preventing a bug where they merge together on the same path
execute if entity @e[tag=anvil,tag=lockedon,tag=!self,distance=..1] run tag @e[distance=..1,tag=anvil,tag=lockedon] add impact

#still locked on, impact after a few seconds
tag @s[tag=lockedon,tag=!impacted,scores={age=78..}] add anvilLinger
tag @s[tag=lockedon,tag=!impacted,scores={age=78..}] add impact

#free-falling anvil will terminate if it's been falling for too long
tag @s[tag=!lockedon,tag=!impacted,scores={age=250..}] add impact

#not locked on, impact when the ground is touched
tag @s[tag=!lockedon,tag=!impacted,nbt={OnGround:1b}] add anvilLinger
tag @s[tag=!lockedon,tag=!impacted,nbt={OnGround:1b}] add impact

tag @s remove self

#impact and damage nearby players (can only happen once!)
execute if entity @s[tag=impact,tag=!impacted] run function sprint_racer:items/item_tick/anvil_entity_impact

#poof after death
execute if entity @s[tag=anvilLinger,scores={lifespan=1}] run particle cloud ~ ~1.5 ~ 0.3 0.3 0.3 0 20