effect clear @s poison
effect clear @s regeneration
effect clear @s blindness
effect clear @s darkness
effect clear @s wither
effect clear @s slowness
effect clear @s nausea
scoreboard players reset @s[scores={electrocute=1..}] electrocute
scoreboard players reset @s[scores={burn=1..}] burn

effect give @s[tag=!undead] instant_health 1 100 true
effect give @s[tag=undead] instant_damage 1 100 true
execute if entity @s[type=wither] run data merge entity @s {Heath:1020.0f}
effect give @s absorption 100000 0 true
tag @s add absorption

tag @s remove clearEffects