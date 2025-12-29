scoreboard players operation @s rNumber = @s itemchestSeedA
#no ender chests in the lobby when 6+ players are present
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0,playerCount=6..}] run scoreboard players set @s rNumber 1

#clean up
tag @s remove custom_item_spawn

#DEBUG
#scoreboard players set @s rNumber 38

#0 = NOTHING

#1..27 = ITEM CHEST
execute if entity @s[scores={rNumber=1..27}] run function sprint_racer:items/container_spawn/item_chest

#28..30 = ENCHANTING TABLE
execute if entity @s[scores={rNumber=28..30}] run function sprint_racer:items/container_spawn/enchanting_table

#31..37 = CAPSULE
execute if entity @s[scores={rNumber=31..37}] unless entity @s[scores={itemchestSeedB=0..21}] run function sprint_racer:items/container_spawn/capsule
execute if entity @s[scores={rNumber=31..37}] if entity @s[scores={itemchestSeedB=0..21}] run function sprint_racer:items/container_spawn/capsule_seeded

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