scoreboard players add @e[scores={enderSteal=..999}] enderSteal 1
scoreboard players reset @a[gamemode=spectator,scores={enderSteal=..999}] enderSteal

#1-50 ticks time window

execute as @e[tag=!getClocked,scores={enderSteal=1}] at @s rotated ~ 0 run summon enderman ^ ^ ^1 {Tags:["thief","phase3","setLife"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,active_effects:[{id:"minecraft:weakness",amplifier:10,duration:199980,show_particles:0b}]}
execute as @e[tag=getClocked,scores={enderSteal=1}] at @s rotated ~ 0 run summon enderman ^ ^ ^1 {Tags:["thief","phase3","e_assassin","setLife"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Glowing:1b,active_effects:[{id:"minecraft:weakness",amplifier:10,duration:199980,show_particles:0b}]}
scoreboard players set @e[tag=setLife] lifespan 10
execute as @e[tag=thief,tag=setLife] at @s run particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1.5 ~ 0.2 0.4 0.2 0 30
execute as @e[tag=thief,tag=setLife] at @s run playsound minecraft:entity.enderman.teleport master @a
tag @e[tag=setLife] remove setLife
tag @e[tag=myEndie3] remove myEndie3
execute as @e[scores={enderSteal=1..}] at @s run function sprint_racer:items/item_tick/enderman_tracking/phase3

tag @e[scores={enderSteal=51..}] remove getClocked
scoreboard players reset @e[scores={enderSteal=51..}] itemStolen
scoreboard players reset @e[scores={enderSteal=51..}] enderSteal


#get rid of endermen who have the goodbye tag
execute as @e[tag=goodbye,tag=thief] at @s run tp @s ~ ~-1000 ~