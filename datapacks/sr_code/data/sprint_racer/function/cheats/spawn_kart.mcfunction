execute if entity @s[scores={rot_pitch=..59}] positioned ~ ~.9 ~ run summon minecraft:pig ^ ^ ^1 {Tags:["setme","kartpig"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["playerkart","setme"]}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1999980,show_particles:0b}]}
execute unless entity @s[scores={rot_pitch=..59}] positioned ~ ~.9 ~ run summon minecraft:pig ~ ~ ~ {Tags:["setme","kartpig"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["playerkart","setme"]}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1999980,show_particles:0b}]}
#Age:-19999980

scoreboard players set @e[tag=setme] lifespan 40
tag @e[tag=setme] remove setme

scoreboard players set @s inputCooldown 20
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 .6