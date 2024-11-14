particle item{item:"minecraft:cake"} ^ ^1.5 ^.75 0.2 0.2 0.2 .05 20 force
execute if entity @s[scores={hitboxHP=..1019}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.9
execute if entity @s[scores={hitboxHP=1020..}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.95

#heals
effect give @s[tag=!undead] instant_health 1 1 true
effect give @s[tag=undead] instant_damage 1 1 true
execute if entity @s[type=wither] run data merge entity @s {Health:1020.0f}
execute if entity @s[type=!wither,scores={hitboxHP=..1012}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+8","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=!wither,scores={hitboxHP=1013}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+7","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=!wither,scores={hitboxHP=1014}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+6","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=!wither,scores={hitboxHP=1015}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+5","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=!wither,scores={hitboxHP=1016}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=!wither,scores={hitboxHP=1017}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=!wither,scores={hitboxHP=1018}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=!wither,scores={hitboxHP=1019}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=!wither,scores={hitboxHP=1020}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+0","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[type=wither] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+20","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}

scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

scoreboard players set @s hitstun 0
scoreboard players add @s[scores={rateAccel=..300}] rateAccel 50