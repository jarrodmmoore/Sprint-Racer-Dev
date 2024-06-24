scoreboard players set @s rNumber 0
execute if entity @e[tag=w,scores={gameState=..7}] run scoreboard players operation @s rNumber = @s itemchestSeedA
execute if entity @e[tag=w,scores={gameState=8..}] run scoreboard players operation @s rNumber = @s itemchestSeedB

#capsules and enchanting only
execute if entity @s[scores={rNumber=1..20}] run function sprint_racer:items/container_spawn/capsule_seeded_timeattack
execute if entity @s[scores={rNumber=21}] run function sprint_racer:items/container_spawn/enchanting_table
execute if entity @s[scores={rNumber=22}] run function sprint_racer:items/container_spawn/cake