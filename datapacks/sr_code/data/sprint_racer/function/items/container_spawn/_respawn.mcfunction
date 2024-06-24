scoreboard players set @s rNumber 0
#pick random number between 1 and 50, excluding banned values (tag=banChest)
scoreboard players operation @s rNumber = @e[sort=random,limit=1,type=armor_stand,tag=random,tag=!banChest,tag=!emptycategory,scores={rNumber=1..50}] rNumber

#can't spawn capsules in water
execute if entity @s[scores={rNumber=31..37}] at @s if block ~ ~ ~ water run scoreboard players set @s rNumber 0

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