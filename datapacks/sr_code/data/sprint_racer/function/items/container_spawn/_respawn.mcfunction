scoreboard players set @s rNumber 0
#pick random number between 1 and 50, excluding banned values (tag=banChest)
scoreboard players operation @s rNumber = @e[sort=random,limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!banChest,tag=!emptycategory,scores={rNumber=1..50}] rNumber

#clean up
tag @s remove custom_item_spawn

#override stuff if we have a value set!
execute if score @s itemchestSeedG matches 1.. run return run function sprint_racer:items/container_spawn/_respawn_general_override
#====

#don't spawn enchanting table in a battle with only obliterators
execute if score #catTotal value matches 0 if score global gameState matches 3 if entity @s[scores={rNumber=28..30}] if entity @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!banChest,scores={rNumber=31..50}] run scoreboard players operation @s rNumber = @e[sort=random,limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!banChest,scores={rNumber=31..50}] rNumber
execute if score #catTotal value matches 0 if score global gameState matches 3 if entity @s[scores={rNumber=28..30}] if entity @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!banChest,scores={rNumber=1..27}] run scoreboard players set @s rNumber 1

#don't spawn 5plus chests when player count is below the requirement
execute if entity @s[tag=5plus] unless score global playerRequire >= @s playerRequire run scoreboard players set @s rNumber 0

#DEBUG
#scoreboard players set @s rNumber 38

#0 = NOTHING

#1..27 = ITEM CHEST
execute if entity @s[scores={rNumber=1..27}] run function sprint_racer:items/container_spawn/item_chest

#28..30 = ENCHANTING TABLE
execute if entity @s[scores={rNumber=28..30}] run function sprint_racer:items/container_spawn/enchanting_table

#31..37 = CAPSULE
execute if entity @s[scores={rNumber=31..37}] run function sprint_racer:items/container_spawn/capsule

#38 = ENDER CHEST
execute if entity @s[scores={rNumber=38}] run function sprint_racer:items/container_spawn/ender_chest

#39..41 = OFFENSE (RED)
execute if entity @s[scores={rNumber=39..41}] run function sprint_racer:items/container_spawn/specialty_red

#42..44 = DEFENSE (YELLOW)
execute if entity @s[scores={rNumber=42..44}] run function sprint_racer:items/container_spawn/specialty_yellow

#45..47 = SPEED (BLUE)
execute if entity @s[scores={rNumber=45..47}] run function sprint_racer:items/container_spawn/specialty_blue

#48..49 = TRAP (GREEN)
execute if entity @s[scores={rNumber=48..49}] run function sprint_racer:items/container_spawn/specialty_green

#50 = GLOBAL (PURPLE)
execute if entity @s[scores={rNumber=50}] run function sprint_racer:items/container_spawn/specialty_purple
