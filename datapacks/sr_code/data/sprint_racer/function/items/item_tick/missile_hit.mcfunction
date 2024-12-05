#are we near something that's hittable? always explode instead of bouncing
execute if score global aiHasItem40 matches 0 if entity @e[tag=activeplayer,distance=..3] run scoreboard players set #hit value 1
execute if score global aiHasItem40 matches 1 run function sprint_racer:items/item_tick/missile_hit_team_check
execute if entity @e[tag=taTargetCore,type=magma_cube,distance=..3] run scoreboard players set #hit value 1

#homing rocket never bounces. it explodes immediately!
execute if entity @s[tag=homing] if score #hit value matches 3 run scoreboard players set #hit value 1
execute if entity @s[tag=fireball] if score #hit value matches 3 run scoreboard players set #hit value 1

#1=explode
#2=fizzle
execute if score #hit value matches ..2 run function sprint_racer:items/item_tick/missile_explode
#3=bounce
execute if score #hit value matches 3 run function sprint_racer:items/item_tick/missile_check/possible_reflect_x