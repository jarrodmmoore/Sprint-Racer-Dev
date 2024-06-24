particle item{item:"minecraft:cake"} ^ ^1.5 ^.75 0.2 0.2 0.2 .05 20 force
execute if entity @s[scores={hp=..19}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.9
execute if entity @s[scores={hp=20..}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.95

#gain +4hp in absorption if already at full health
execute if entity @s[scores={hp=20}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=21}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=22}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=23}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=24}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+0","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 15
tag @e[tag=setscore] remove setscore
execute if entity @s[scores={hp=20..}] run effect give @s absorption 100000 0 true

#heals
effect give @s instant_health 1 2 true
execute if entity @s[scores={hp=..12}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+8","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=13}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+7","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=14}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+6","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=15}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+5","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=16}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=17}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=18}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=19}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}

scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

scoreboard players set @s hitstun 0
scoreboard players add @s[scores={rateAccel=..300}] rateAccel 50