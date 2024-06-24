execute if entity @e[tag=activeplayer,distance=..4,scores={invisibility=..0}] run function sprint_racer:items/item_tick/fireball_check_player_teams
particle flame ^ ^1.6 ^-3 0.2 0.2 0.2 .1 8
particle flame ^ ^1.6 ^-3 0.2 0.2 0.2 .1 2 force
playsound minecraft:entity.generic.burn master @a ~ ~ ~ .35 .1