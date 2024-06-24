execute if entity @s[tag=missile,tag=fireball] run function sprint_racer:items/item_tick/missile_explode_fireball
execute positioned ^ ^1.5 ^-1.25 run function sprint_racer:explode_fake
scoreboard players set @s lifespan 0
execute on passengers run scoreboard players set @s lifespan 0
tag @s remove missile