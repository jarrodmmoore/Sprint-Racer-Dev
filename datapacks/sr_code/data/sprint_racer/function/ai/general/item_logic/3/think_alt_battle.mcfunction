#if there's a player near us, drop tnt as a trap

tag @s add self0
tag @e[tag=activeplayer,sort=nearest,tag=!self0] add nearestPlayer

execute if entity @e[tag=nearestPlayer,distance=10..50] run function sprint_racer:ai/general/item_logic/3/use_alt

tag @s remove self0
tag @e[tag=nearestPlayer] remove nearestPlayer