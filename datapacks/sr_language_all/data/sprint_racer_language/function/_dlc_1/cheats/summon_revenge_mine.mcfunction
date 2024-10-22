#1 in 5 chance of making a hyper chicken mine
scoreboard players set @s math 0
scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,scores={rNumber=1..5}] rNumber

execute if entity @s[scores={math=..4}] run summon chicken ~ ~ ~ {PersistenceRequired:1b,EggLayTime:1999980,Tags:["chickenmine","cmineactive","trap","giveID","getrevenge"],Passengers:[{id:"minecraft:zombified_piglin",CustomNameVisible:1b,CustomName:'{"translate":"sr.cheats.get_revenge","color":"red","bold":true}',Silent:1b,Health:1.0f,IsBaby:1b,Tags:["cminezombie","trap"],Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],ArmorDropChances:[0.85f,0.85f,0.85f,0.0f],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1999980,show_particles:0b}],attributes:[{id:"max_health",base:1},{id:"follow_range",base:120},{id:"attack_damage",base:0}]}],attributes:[{id:"movement_speed",base:0.5d}]}
execute if entity @s[scores={math=5}] run summon chicken ~ ~ ~ {Glowing:1b,PersistenceRequired:1b,Health:12.0f,EggLayTime:199980,Tags:["chickenmine","cmineactive","hyper","trap","giveID","getrevenge"],Passengers:[{id:"minecraft:zombified_piglin",CustomNameVisible:1b,CustomName:'{"translate":"sr.cheats.get_revenge","color":"red","bold":true}',Silent:1b,Invulnerable:1b,CanPickUpLoot:0b,IsBaby:1b,Tags:["cminezombie","trap"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{id:"minecraft:mending",lvl:1}]}}],ArmorDropChances:[0.85f,0.85f,0.85f,0.0f],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:199980,show_particles:0b}],attributes:[{id:"follow_range",base:200},{id:"spawn_reinforcements",base:0}]}],active_effects:[{id:"minecraft:jump_boost",amplifier:5,duration:199980,show_particles:1b},{id:"minecraft:regeneration",amplifier:1,duration:199980,show_particles:1b},{id:"minecraft:resistance",amplifier:1,duration:199980,show_particles:1b}],attributes:[{id:"max_health",base:12},{id:"knockback_resistance",base:1},{id:"movement_speed",base:0.55d}]}
scoreboard players operation @e[limit=1,sort=nearest,tag=giveID] playerID = @s playerID
scoreboard players operation @e[limit=1,sort=nearest,tag=giveID] revengeMine = @s revengeMine
tag @e[tag=giveID] remove giveID

playsound minecraft:entity.chicken.hurt master @a ~ ~ ~ 1 .65
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 2 1
particle large_smoke ~ ~ ~ .2 .2 .2 .05 20