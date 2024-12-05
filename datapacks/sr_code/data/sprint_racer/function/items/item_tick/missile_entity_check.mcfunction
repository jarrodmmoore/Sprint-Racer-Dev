scoreboard players set #hit value 0
execute positioned ~-1 ~-1 ~-1 if entity @e[tag=activeplayer,dx=2,dy=2,dz=2] run scoreboard players set #hit value 1
execute if score global gameState matches 8 positioned ~-1 ~-1 ~-1 if entity @e[tag=taTargetCore,type=magma_cube,dx=2,dy=2,dz=2] run scoreboard players set #hit value 1

#explode if we found a thing
execute if score #hit value matches 1 at @s run function sprint_racer:items/item_tick/missile_hit