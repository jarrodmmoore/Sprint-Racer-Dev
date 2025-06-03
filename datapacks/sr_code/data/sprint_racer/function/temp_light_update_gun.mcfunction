summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},Duration:75,WaitTime:0,Tags:["lightgun","needsorient"]}
tp @e[tag=needsorient] @s
execute as @e[tag=needsorient] at @s run tp @s ^ ^1 ^3
tag @e[tag=needsorient] remove needsorient

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ .2 1