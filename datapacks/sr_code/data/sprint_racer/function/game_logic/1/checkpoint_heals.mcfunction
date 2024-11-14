#calculate how much less hp we have than our max
scoreboard players operation #dHP value = @s hp
scoreboard players operation #dHP value -= @s cStatHP

#heals
execute if score @s cStatCPHeal matches 1..3 run effect give @s regeneration 1 2 true
execute if score @s cStatCPHeal matches 4 run effect give @s instant_health 1 0 true
execute if score @s cStatCPHeal matches 5..8 run effect give @s instant_health 2 0 true
execute if score @s cStatCPHeal matches 9..12 run effect give @s instant_health 3 0 true
execute if score @s cStatCPHeal matches 13.. run effect give @s instant_health 100 0 true

#limit the numbers based on stats
execute if score @s cStatCPHeal matches 1..3 if score #dHP value matches ..-2 run scoreboard players set #dHP value -1
execute if score @s cStatCPHeal matches 4 if score #dHP value matches ..-5 run scoreboard players set #dHP value -4
execute if score @s cStatCPHeal matches 5..8 if score #dHP value matches ..-9 run scoreboard players set #dHP value -8
execute if score @s cStatCPHeal matches 9..12 if score #dHP value matches ..-13 run scoreboard players set #dHP value -12
execute if score @s cStatCPHeal matches 13.. if score #dHP value matches ..-21 run scoreboard players set #dHP value -20

#numbers based on #dHP
execute if score #dHP value matches ..-20 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+20","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -19 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+19","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -18 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+18","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -17 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+17","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -16 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+16","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -15 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+15","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -14 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+14","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -13 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+13","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -12 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+12","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -11 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+11","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -10 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+10","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -9 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+9","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -8 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+8","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -7 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+7","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -6 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+6","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -5 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+5","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -4 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -3 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -2 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if score #dHP value matches -1 run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
#execute if score #dHP value matches 0.. run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+0","color":"light_purple","bold":"true"}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore