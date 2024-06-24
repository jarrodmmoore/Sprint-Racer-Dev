#executed by a player

execute rotated ~ 0 positioned ^ ^ ^7 run tag @e[limit=1,sort=nearest,tag=thief,tag=phase1,tag=!myEndie1,tag=!endieMoved,tag=!goodbye] add myEndie1
execute if entity @s[scores={enderman=..29}] rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=myEndie1,tag=!endieMoved] ^ ^ ^7 facing entity @s eyes
execute if entity @s[scores={enderman=..29}] rotated ~ 0 positioned ^ ^ ^5 run scoreboard players set @e[limit=1,sort=nearest,tag=myEndie1,tag=!endieMoved] lifespan 10
execute if entity @s[scores={enderman=30}] run tag @e[limit=1,sort=nearest,tag=myEndie1,tag=!endieMoved] add goodbye

execute if entity @s[tag=!playerCyan,tag=!playerOrange,scores={enderman=16}] as @a at @s run playsound minecraft:entity.enderman.ambient master @s ~ 100000 ~ 100000 1
execute if entity @s[tag=playerCyan,scores={enderman=16}] as @a[tag=playerOrange] at @s run playsound minecraft:entity.enderman.ambient master @s ~ 100000 ~ 100000 1
execute if entity @s[tag=playerOrange,scores={enderman=16}] as @a[tag=playerCyan] at @s run playsound minecraft:entity.enderman.ambient master @s ~ 100000 ~ 100000 1

execute if entity @s[scores={enderman=30}] at @e[tag=myEndie1,limit=1,sort=nearest] run particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1.5 ~ 0.2 0.4 0.2 0 30
execute if entity @s[scores={enderman=30}] at @e[tag=myEndie1,limit=1,sort=nearest] run playsound minecraft:entity.enderman.teleport master @a

tag @e[tag=myEndie1,limit=1,sort=nearest,tag=!endieMoved] add endieMoved