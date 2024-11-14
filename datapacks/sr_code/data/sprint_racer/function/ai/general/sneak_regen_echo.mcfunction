scoreboard players add @s regenTimer 1

execute if entity @s[tag=undead,scores={regenTimer=15}] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[tag=!undead,scores={regenTimer=15}] run effect give @s minecraft:instant_health 1 0 true

execute if entity @s[scores={regenTimer=15,hitboxHP=..1016}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={regenTimer=15,hitboxHP=1017}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={regenTimer=15,hitboxHP=1018}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={regenTimer=15,hitboxHP=1019}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={regenTimer=15,hitboxHP=1020..}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+0","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

execute if entity @s[scores={regenTimer=15,hitboxHP=..1019}] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 1
execute if entity @s[scores={regenTimer=15,hitboxHP=1020..}] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

execute if score global gameState matches 3 run scoreboard players set @s[scores={regenTimer=15..}] regenTimer -6
scoreboard players set @s[scores={regenTimer=15..}] regenTimer 0