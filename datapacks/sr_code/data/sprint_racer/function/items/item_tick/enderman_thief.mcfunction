scoreboard players add @e[scores={enderman=..999}] enderman 1
scoreboard players reset @a[gamemode=spectator,scores={enderman=..999}] enderman

#VALUE LIST
#PHASE 1 = 1-30 initial summon, enderman runs in front of user for a bit before vanishing
#PHASE 2 = 60-340 wait for another player to hold an item in their hands, skip to 3rd phase if player is found, skip over 3rd phase if no player is ever found
#PHASE 3 = 351-390 found someone, steal the item from their hands and taunt them (this is run by the victim via the "enderman_stealing" function)
#PHASE 4 = 450-500 report back to user and give them the spoils

#PHASE 1
execute as @e[tag=!assassin,scores={enderman=1}] at @s rotated ~ 0 run summon enderman ^ ^ ^7 {Tags:["thief","phase1","setLife"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:weakness",amplifier:10,duration:199980,show_particles:0b}]}
execute as @e[tag=assassin,scores={enderman=1}] at @s rotated ~ 0 run summon enderman ^ ^ ^7 {Tags:["thief","phase1","e_assassin","setLife"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Glowing:1b,active_effects:[{id:"minecraft:weakness",amplifier:10,duration:199980,show_particles:0b}]}
scoreboard players set @e[tag=setLife] lifespan 100
#execute as @e[tag=thief,tag=setLife] at @s run particle cloud ~ ~1.5 ~ 0.2 0.4 0.2 0 20
execute as @e[tag=thief,tag=setLife] at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 2 .8
tag @e[tag=setLife] remove setLife
tag @e[tag=myEndie1] remove myEndie1
execute as @e[scores={enderman=1..30}] at @s run function sprint_racer:items/item_tick/enderman_tracking/phase1

#PHASE 2
scoreboard players set @e[scores={enderman=60}] giveItem -1
execute as @e[scores={enderman=60..340}] at @s run function sprint_racer:items/item_tick/enderman_tracking/phase2
#found nothing? skip phase 3
execute as @e[scores={enderman=341}] run scoreboard players set @s enderman 440

#PHASE 3
#nothing, wait for another function to play an enderman stealing animation on the victim

#PHASE 4 (this used to be an animation of the enderman handing you the item, but this was cut to make things snappy)
#execute as @e[tag=!assassin,scores={enderman=450}] at @s rotated ~ 0 run summon enderman ^ ^ ^7 {Tags:["thief","phase4","setLife"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,active_effects:[{id:"minecraft:weakness",amplifier:10,duration:199980,show_particles:0b}]}
#execute as @e[tag=assassin,scores={enderman=450}] at @s rotated ~ 0 run summon enderman ^ ^ ^7 {Tags:["thief","phase4","e_assassin","setLife"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Glowing:1b,active_effects:[{id:"minecraft:weakness",amplifier:10,duration:199980,show_particles:0b}]}
#scoreboard players set @e[tag=setLife] lifespan 100
#execute as @e[tag=thief,tag=setLife] at @s run particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1.5 ~ 0.2 0.4 0.2 0 30
#execute as @e[tag=thief,tag=setLife] at @s run playsound minecraft:entity.enderman.teleport master @a
#tag @e[tag=setLife] remove setLife
#tag @e[tag=myEndie4] remove myEndie1
#execute as @e[scores={enderman=450..500}] at @s run function sprint_racer:items/item_tick/enderman_tracking/phase4
execute as @a[scores={enderman=450..500}] at @s run function sprint_racer:items/item_tick/enderman_tracking/phase4_instant

tag @e[scores={enderman=500..}] remove assassin
scoreboard players reset @e[scores={enderman=500..}] enderman


#get rid of endermen who have the goodbye tag
execute as @e[tag=goodbye,tag=thief] at @s run tp @s ~ ~-1000 ~