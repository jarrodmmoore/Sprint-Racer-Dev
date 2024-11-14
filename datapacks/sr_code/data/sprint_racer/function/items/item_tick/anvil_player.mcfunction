scoreboard players add @e[scores={anvil=..999}] anvil 1
scoreboard players reset @a[gamemode=spectator,scores={anvil=..999}] anvil

#using certain items will allow players to dodge their anvil
execute as @e[tag=dodge] at @s positioned ~ ~3 ~ run tag @e[tag=anvil,distance=..6,limit=1,sort=nearest] remove lockedon
scoreboard players reset @e[tag=dodge,scores={anvil=3..}] anvil
tag @e[tag=dodge] remove dodge

execute as @e[scores={anvil=1}] at @s run playsound minecraft:entity.evoker.prepare_attack master @s ~ ~ ~ 2 1.1
execute as @e[scores={anvil=1}] at @s run summon armor_stand ~ ~3 ~ {Tags:["anvil","lockedon","giveID"],Marker:0b,Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"anvil",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute as @e[scores={anvil=1}] at @s positioned ~ ~3 ~ run scoreboard players operation @e[sort=nearest,limit=1,tag=giveID] playerID = @s attackerID
tag @e[tag=giveID] remove giveID
execute as @e[scores={anvil=1}] at @s run particle cloud ~ ~4.5 ~ 0.2 0.2 0.2 0 20 force

#manual falling animation for anvils that are still locked on to their target
execute as @e[scores={anvil=..70}] at @s run summon armor_stand ~ ~3 ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[scores={anvil=71}] at @s run summon armor_stand ~ ~2.9 ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[scores={anvil=72}] at @s run summon armor_stand ~ ~2.7 ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[scores={anvil=73}] at @s run summon armor_stand ~ ~2.4 ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[scores={anvil=74}] at @s run summon armor_stand ~ ~2.0 ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[scores={anvil=75}] at @s run summon armor_stand ~ ~1.5 ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[scores={anvil=76}] at @s run summon armor_stand ~ ~.9 ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[scores={anvil=77}] at @s run summon armor_stand ~ ~.4 ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[scores={anvil=78}] at @s run summon armor_stand ~ ~ ~ {Tags:["anvilPath","setLife"],NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:2039583}
scoreboard players set @e[tag=setLife] lifespan 2
tag @e[tag=setLife] remove setLife

scoreboard players reset @e[scores={anvil=110}] anvil