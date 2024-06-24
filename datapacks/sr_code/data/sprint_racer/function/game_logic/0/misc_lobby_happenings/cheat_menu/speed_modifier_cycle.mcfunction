scoreboard players add @s speedlevel 1
scoreboard players set @s[scores={speedlevel=13..}] speedlevel 0
scoreboard players set @s[tag=!01a] speedlevel 0

summon armor_stand 1593 101.6 449 {Tags:["speedmodtext","lobbyprop"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Invisible:1,Marker:1b,DisabledSlots:2039583}

execute if entity @e[tag=cheats,scores={speedlevel=..0}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.5x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=1}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.6x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=2}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.7x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=3}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.8x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=4}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.9x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=5}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"2.0x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=6}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"0.7x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=7}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"0.8x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=8}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"0.9x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=9}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.1x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=10}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.2x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=11}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.3x","bold":true}',CustomNameVisible:1b}
execute if entity @e[tag=cheats,scores={speedlevel=12..}] as @e[limit=1,tag=speedmodtext,type=armor_stand] run data merge entity @s {CustomName:'{"text":"1.4x","bold":true}',CustomNameVisible:1b}

scoreboard players set @e[type=armor_stand,limit=1,tag=speedmodtext] lifespan 15