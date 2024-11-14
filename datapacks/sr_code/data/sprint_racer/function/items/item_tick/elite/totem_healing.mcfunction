#tag @s[scores={hp=..19}] add HEALME
execute if score @s hp < @s cStatHP run tag @s add HEALME

execute if entity @s[tag=HEALME] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 1.2
execute if entity @s[tag=HEALME] run particle heart ^ ^1.5 ^.75 0.2 0.2 0.2 .1 1
execute if entity @s[tag=HEALME] run effect give @s regeneration 1 2 true

execute if entity @s[tag=HEALME] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 15
tag @e[tag=setscore] remove setscore

execute if entity @s[tag=HEALME] run scoreboard players set @s inputCooldown 15

execute if entity @s[tag=!HEALME] run function sprint_racer:items/item_tick/elite/totem_something_no_heal

tag @s remove HEALME