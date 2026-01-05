execute if entity @s[type=player] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Tags:["explosion","boom"]}
#execute if entity @s[type=player] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Tags:["explosion","killcloud","setme"]}

execute if entity @s[type=!player] run summon armor_stand ~ ~.2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Tags:["explosion","boom"]}
#execute if entity @s[type=!player] run summon armor_stand ~ ~.2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Tags:["explosion","killcloud","setme"]}

execute at @s run tag @e[distance=..3,tag=slimetrap] add dissolve
execute at @s run tag @e[distance=..3,tag=magmatrap] add dissolve

#blow up item capsules to prevent a bug
#execute as @e[tag=itemcontainer,tag=chest3,distance=..7] at @s run function sprint_racer:items/container_types/capsule_broken_by_explosion

#kill dropped items
execute as @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}] run function sprint_racer:items/item_destroyed_by_explosion

#blow up targets
tag @e[distance=..5,tag=taTargetCore,type=magma_cube] add targetHit

#refund some hp for the wither
execute as @e[distance=..5,type=wither] run function sprint_racer:ai/general/wither_refund_hp

tag @s add self
scoreboard players operation @e[tag=playing,gamemode=!spectator,distance=..5,tag=!self] attackerID = @s playerID
scoreboard players set @e[tag=playing,gamemode=!spectator,distance=..5] attackTime 100
scoreboard players operation @e[tag=ai,distance=..5] attackerID = @s playerID
scoreboard players set @e[tag=ai,distance=..5] attackTime 100
tag @s remove self

#particles
particle flame ~ ~.5 ~ 0.5 0.5 0.5 0.01 10 force
particle flame ~ ~.5 ~ 0.5 0.5 0.5 0.01 20
#particle poof ~ ~.5 ~ 1.4 1.4 1.4 0 5 force

scoreboard players set @e[tag=setme,tag=explosion] lifespan 5
tag @e[tag=setme] remove setme