#item will die
tag @s remove capsuleItem
scoreboard players set @s lifespan 0

#give player item depending on what we are
#normal items
execute if entity @s[tag=capsule_normal] run return run function sprint_racer:items/container_types/capsule_item_collect_item_display_normal
#elite items
execute if entity @s[tag=capsule_elite] run return run function sprint_racer:items/container_types/capsule_item_collect_item_display_elite

#still here? we must be a custom item. mark self for collection
tag @s add custom_item_collected
scoreboard players operation @s playerID = @e[tag=capsuleCollect,distance=..5,limit=1] playerID
scoreboard players set @s lifespan 5