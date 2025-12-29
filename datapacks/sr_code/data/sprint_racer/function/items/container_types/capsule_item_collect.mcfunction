#item will die
tag @s remove capsuleItem
scoreboard players set @s lifespan 0

#give player item depending on what we are
#normal items
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{normalitem:1b}}}}] run return run function sprint_racer:items/container_types/capsule_item_collect_normal
#elite items
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{eliteitem:1b}}}}] run return run function sprint_racer:items/container_types/capsule_item_collect_elite
