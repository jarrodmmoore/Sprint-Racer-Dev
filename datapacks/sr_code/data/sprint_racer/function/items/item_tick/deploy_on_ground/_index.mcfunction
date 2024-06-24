execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no3:1b}}}}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/tnt
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{elite3:1b}}}}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/tnt_shotgun
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no13:1b}}}}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/slime_trap
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{elite13:1b}}}}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/magma_trap
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no14:1b}}}}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/nasty_potion
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{elite14:1b}}}}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/nasty_potion_big
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no16:1b}}}}] run function sprint_racer:items/item_tick/deploy_on_ground/trapped_chest
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{elite16:1b}}}}] run function sprint_racer:items/item_tick/deploy_on_ground/land_mine
#execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no16:1b}}}}] unless entity @e[tag=w,scores={gameState=1..}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/trap_error
#execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{elite16:1b}}}}] unless entity @e[tag=w,scores={gameState=1..}] at @s run function sprint_racer:items/item_tick/deploy_on_ground/trap_error