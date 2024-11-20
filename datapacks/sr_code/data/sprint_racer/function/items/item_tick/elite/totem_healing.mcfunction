#tag @s[scores={hp=..19}] add HEALME
execute if score @s hp < @s cStatHP run tag @s add HEALME

execute if entity @s[tag=HEALME] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 1.2
execute if entity @s[tag=HEALME] run particle heart ^ ^1.5 ^.75 0.2 0.2 0.2 .1 1
execute if entity @s[tag=HEALME] run effect give @s regeneration 1 2 true


execute if entity @s[tag=HEALME] run summon text_display ~ ~1.8 ~ {text:'{"text":"+1","color":"light_purple","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity

execute if entity @s[tag=HEALME] run scoreboard players set @s inputCooldown 15

execute if entity @s[tag=!HEALME] run function sprint_racer:items/item_tick/elite/totem_something_no_heal

tag @s remove HEALME