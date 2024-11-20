clear @s squid_spawn_egg[custom_data~{elite19:1b}] 1
clear @s blue_terracotta[custom_data~{elite19:1b}] 1

playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .8
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1.4 .9
summon squid ^ ^1 ^5 {Invulnerable:1b,NoAI:1b,Tags:["setme"]}
scoreboard players set @e[tag=setme] lifespan 20
effect give @e[tag=setme] levitation 10 10 true
execute at @e[tag=setme] run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 20
execute at @e[tag=setme] run playsound minecraft:entity.squid.ambient master @a
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] as @e[tag=setme] run function sprint_racer:cheats/homing_entity_chance
tag @e[tag=setme] remove setme

#only target players ahead of the user's position
tag @s add self
execute unless entity @s[scores={itemPosition=1..}] run tag @e[limit=4,tag=activeplayer,tag=!self,scores={invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=1}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..8,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=2}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=3}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..2,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=4}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..3,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=5}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..4,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=6}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..5,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=7}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..6,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=8}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..7,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=9..}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..8,invisibility=..0,invulTime=..0}] add squidTarget
tag @s remove self


#don't blind teammates
execute if entity @e[tag=w,type=armor_stand,tag=teamplay] if entity @s[tag=playerOrange] run tag @e[tag=squidTarget,tag=playerOrange] remove squidTarget
execute if entity @e[tag=w,type=armor_stand,tag=teamplay] if entity @s[tag=playerCyan] run tag @e[tag=squidTarget,tag=playerCyan] remove squidTarget


execute as @e[tag=squidTarget] at @s run summon squid ^ ^1.5 ^4 {Invulnerable:1b,NoGravity:1b,Tags:["setme","squirt"]}
execute as @e[tag=squirt] at @s run playsound minecraft:entity.squid.squirt master @a
execute as @e[tag=squirt] at @s run particle squid_ink ~ ~ ~ 0.3 0.3 0.3 .1 10
execute as @e[tag=squirt] at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 20
scoreboard players set @e[tag=setme] lifespan 20
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] as @e[tag=setme] run function sprint_racer:cheats/homing_entity_chance
tag @e[tag=setme] remove setme

effect give @e[tag=squidTarget] blindness 7 0 true
scoreboard players set @e[tag=squidTarget] burn 0
scoreboard players operation @e[tag=squidTarget] attackerID = @s playerID
scoreboard players set @e[tag=squidTarget] attackTime 100
scoreboard players set @e[tag=squidTarget] burn 0
execute unless entity @e[tag=w,tag=halftick] run scoreboard players set @e[tag=squidTarget] blinddelay 8
execute if score #halftick value matches 1 run scoreboard players set @e[tag=squidTarget] blinddelay 4
execute unless entity @e[tag=w,tag=halftick] run scoreboard players set @e[tag=squidTarget] blindtime 115
execute if score #halftick value matches 1 run scoreboard players set @e[tag=squidTarget] blindtime 56

tag @e[tag=squidTarget] remove squidTarget

scoreboard players set @s inputCooldown 20