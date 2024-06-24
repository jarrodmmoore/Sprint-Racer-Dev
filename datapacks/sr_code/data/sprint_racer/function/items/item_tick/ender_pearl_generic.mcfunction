particle enchanted_hit ~ ~ ~ .0 0 0 0 1 force
execute if score global gameState matches 1 if entity @s[tag=pearlHasID] run function sprint_racer:items/item_tick/ender_pearl_listen_for_cp
execute if score global gameState matches 7 if entity @s[tag=pearlHasID] run function sprint_racer:items/item_tick/ender_pearl_listen_for_cp