summon area_effect_cloud ~ ~ ~ {Duration:75,Tags:["lightgun","needsorient"]}
tp @e[tag=needsorient] @s
execute as @e[tag=needsorient] at @s run tp @s ^ ^1 ^3
tag @e[tag=needsorient] remove needsorient

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ .2 1