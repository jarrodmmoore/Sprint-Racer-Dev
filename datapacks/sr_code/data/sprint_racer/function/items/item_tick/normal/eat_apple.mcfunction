clear @s apple[custom_data~{no5:1b}] 1

#calculate how much less hp we have than our max
scoreboard players operation #dHP value = @s hp
scoreboard players operation #dHP value -= @s cStatHP

effect clear @s poison
effect clear @s wither
execute if score #dHP value matches 0..3 run effect clear @s absorption
scoreboard players reset @s[scores={electrocute=1..}] electrocute
scoreboard players reset @s[scores={burn=1..}] burn

particle item{item:"minecraft:apple"} ^ ^1.5 ^.75 0.2 0.2 0.2 .05 20 force
execute if score #dHP value matches 0.. run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1.25
execute if score #dHP value matches ..-1 run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1

#gain +4hp in absorption if already at full health
execute if score #dHP value matches 0 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches 1 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches 2 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches 3 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches 4.. run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+0","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 15
tag @e[tag=setscore] remove setscore
execute if score #dHP value matches 0.. run effect give @s absorption 100000 0 true
execute if score #dHP value matches 0.. run tag @s add absorption

#heals
effect give @s instant_health 1 1 true

#numbers based on #dHP
execute if score #dHP value matches ..-8 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+8","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches -7 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+7","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches -6 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+6","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches -5 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+5","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches -4 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches -3 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches -2 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if score #dHP value matches -1 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
#execute if score #dHP value matches 0.. run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+0","color":"light_purple","bold":"true"}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

scoreboard players set @s hitstun 0
scoreboard players add @s[scores={rateAccel=..300}] rateAccel 50

scoreboard players set @s inputCooldown 5