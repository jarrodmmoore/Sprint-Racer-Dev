#clear @s book[custom_data~{enchbook:1b}]

execute if entity @s[scores={itemBlockState=1,itemCooldown=..0}] run function sprint_racer:items/container_types/item_chest
execute if entity @s[scores={itemBlockState=2,itemCooldown=..0}] run function sprint_racer:items/container_types/enchanting_table
execute if entity @s[scores={itemBlockState=3,itemCooldown=..0}] run function sprint_racer:items/container_types/capsule
execute if entity @s[scores={itemBlockState=4,itemCooldown=..0}] run function sprint_racer:items/container_types/ender_chest
execute if entity @s[scores={itemBlockState=5,itemCooldown=..0}] run function sprint_racer:items/container_types/specialty_red
execute if entity @s[scores={itemBlockState=6,itemCooldown=..0}] run function sprint_racer:items/container_types/specialty_yellow
execute if entity @s[scores={itemBlockState=7,itemCooldown=..0}] run function sprint_racer:items/container_types/specialty_blue
execute if entity @s[scores={itemBlockState=8,itemCooldown=..0}] run function sprint_racer:items/container_types/specialty_green
execute if entity @s[scores={itemBlockState=9,itemCooldown=..0}] run function sprint_racer:items/container_types/specialty_purple
execute if entity @s[scores={itemBlockState=11,itemCooldown=..0}] run function sprint_racer:items/container_types/cake_check

#fake chests
execute if entity @s[scores={invisibility=..0,itemBlockState=10}] run function sprint_racer:items/item_tick/explosive_trap
execute if entity @s[scores={invisibility=..0,itemBlockState=12}] run function sprint_racer:items/item_tick/explosive_trap_prank

#custom chests
execute if entity @s[scores={itemBlockState=20..,itemCooldown=..0}] run function sprint_racer:items/container_types/custom with storage sprint_racer:func_args

scoreboard players set @s itemBlockState 0
execute if score global gameState matches 3 run scoreboard players set @s[scores={itemCooldown=6..}] itemCooldown 5