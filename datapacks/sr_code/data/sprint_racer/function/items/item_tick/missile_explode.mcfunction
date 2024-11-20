execute if score #hit value matches 1 if entity @s[tag=missile,tag=fireball] run function sprint_racer:items/item_tick/missile_explode_fireball

execute if score #hit value matches 1 run function sprint_racer:explode_fake
execute if score #hit value matches 1 run function sprint_racer:explode

scoreboard players set @s lifespan 0
execute on passengers run scoreboard players set @s lifespan 0
tag @s remove missile