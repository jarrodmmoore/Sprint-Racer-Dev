scoreboard players set @s targetData 1

summon minecraft:magma_cube ~ ~ ~ {Tags:["setme","taTargetEnt","targetStay","taTargetCore"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:1000.0f,Size:0,attributes:[{id:"max_health",base:1000},{id:"knockback_resistance",base:1},{id:"attack_damage",base:0},{id:"attack_knockback",base:0}]}

#custom model for targets, only visible with resource pack
summon snowball ~ ~.5 ~ {Tags:["targetVisual","setlife"],NoGravity:1b,Invulnerable:1b,Glowing:1b,Item:{id:"snowball",count:1,components:{"minecraft:custom_model_data":1234567}}}

#taTargetEnt
#taTargetCore

#team join colorRed @e[tag=setme,tag=taTargetCore]
team join colorRed @e[tag=setlife,tag=targetVisual,type=snowball]
scoreboard players set @e[tag=setme,type=magma_cube] lifespan 50
scoreboard players set @e[tag=setme,type=magma_cube] targetData 1
scoreboard players set @e[tag=setme,type=magma_cube] playerID -22222
#target immediately breaks if impossible to reach (no items mode)
execute if entity @s[tag=targetImpossible] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=taNoItems] run tag @e[tag=setme,type=magma_cube] add target_silent
execute if entity @s[tag=targetImpossible] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=taNoItems] run tag @e[tag=setme,type=magma_cube] add targetHit
tag @e[tag=setme,type=magma_cube] remove setme

scoreboard players set @e[tag=setlife] lifespan 50
tag @e[tag=setlife] remove setlife