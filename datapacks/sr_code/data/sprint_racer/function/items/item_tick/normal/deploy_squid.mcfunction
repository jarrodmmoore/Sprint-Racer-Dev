clear @s *[custom_data~{no19:1b}] 1

playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1.4 .9
summon squid ^ ^1 ^5 {Invulnerable:1b,NoAI:1b,Tags:["setme"]}
scoreboard players set @e[tag=setme] lifespan 20
effect give @e[tag=setme] levitation 10 10 true
execute at @e[tag=setme] run playsound minecraft:entity.squid.ambient master @a
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] as @e[tag=setme] run function sprint_racer:cheats/homing_entity_chance
tag @e[tag=setme] remove setme

#pick targets, this is different between race and battle mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1}] run function sprint_racer:items/item_tick/normal/squid/targets_race
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1}] run function sprint_racer:items/item_tick/normal/squid/targets_not_race

execute as @e[tag=squidTarget] at @s run summon squid ^ ^1.5 ^4 {Invulnerable:1b,NoGravity:1b,Tags:["setme","squirt"]}
execute as @e[tag=squirt] at @s run playsound minecraft:entity.squid.squirt master @a
execute as @e[tag=squirt] at @s run particle squid_ink ~ ~ ~ 0.3 0.3 0.3 .1 10
scoreboard players set @e[tag=setme] lifespan 20
scoreboard players set @e[tag=ai,tag=squidTarget] hitstun 100
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] as @e[tag=setme] run function sprint_racer:cheats/homing_entity_chance
tag @e[tag=setme] remove setme

#effect give @e[tag=squidTarget] blindness 4 0 true
effect give @e[tag=squidTarget] darkness 4 0 true
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=halftick] run scoreboard players set @e[tag=squidTarget] blinddelay 12
execute if score #halftick value matches 1 run scoreboard players set @e[tag=squidTarget] blinddelay 6
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=halftick] run scoreboard players set @e[tag=squidTarget] blindtime 64
execute if score #halftick value matches 1 run scoreboard players set @e[tag=squidTarget] blindtime 32

tag @e[tag=squidTarget] remove squidTarget

scoreboard players set @s inputCooldown 20