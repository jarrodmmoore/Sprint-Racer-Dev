effect give @s[scores={electrocute=2}] minecraft:resistance 1 1 true
effect give @s[scores={resistTime=1..,electrocute=2}] minecraft:resistance 1 2 true

scoreboard players add @s[scores={electrocute=..999}] electrocute 1
scoreboard players reset @s[scores={electrocute=10..}] electrocute

execute if entity @s[scores={electrocute=3}] at @s run particle end_rod ~ ~1 ~ .35 .4 .35 0 20
execute if entity @s[scores={electrocute=3}] at @s run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 2 1.5
execute if entity @s[scores={electrocute=3}] at @s if block ~ ~ ~ water run playsound minecraft:block.bubble_column.whirlpool_inside master @a ~ ~ ~ 2 2
execute if entity @s[tag=!undead,scores={electrocute=3}] at @s unless block ~ ~ ~ water run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[tag=!undead,scores={electrocute=3}] at @s if block ~ ~ ~ water run effect give @s minecraft:instant_damage 1 1 true
execute if entity @s[tag=undead,scores={electrocute=3}] at @s unless block ~ ~ ~ water run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[tag=undead,scores={electrocute=3}] at @s if block ~ ~ ~ water run effect give @s minecraft:instant_health 1 1 true
execute if entity @s[type=wither,scores={electrocute=3}] at @s run function sprint_racer:ai/general/wither_take_damage_lite
execute if entity @s[scores={electrocute=3}] at @s if block ~ ~ ~ water run function sprint_racer_language:gameplay/misc_item_text/critical_hit_white

execute unless entity @s[scores={resistTime=1..}] run effect give @s[scores={electrocute=3}] minecraft:wither 1 5 true

scoreboard players add @s[scores={electrocute=3}] rateDecel 50

effect clear @s[scores={electrocute=4,nResist=..0,invulTime=..0}] minecraft:resistance