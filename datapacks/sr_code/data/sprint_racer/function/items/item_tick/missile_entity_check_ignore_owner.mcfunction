scoreboard players set #hit value 0

#explode anything other than our owner
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=activeplayer] if score @s playerID = #checkID value run tag @s add rocketOwner
execute positioned ~-1 ~-1 ~-1 if entity @e[tag=activeplayer,tag=!rocketOwner,dx=2,dy=2,dz=2] run scoreboard players set #hit value 1
execute if score global gameState matches 8 positioned ~-1 ~-1 ~-1 if entity @e[tag=taTargetCore,dx=2,dy=2,dz=2] run scoreboard players set #hit value 1
tag @e[tag=rocketOwner] remove rocketOwner

#explode if we found a thing
execute if score #hit value matches 1 at @s run function sprint_racer:items/item_tick/missile_hit