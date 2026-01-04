scoreboard players set @s rNumber 0
execute if score global gameState matches 7 run scoreboard players operation @s rNumber = @s itemchestSeedA
execute if score global gameState matches 8 run scoreboard players operation @s rNumber = @s itemchestSeedB

#clean up
tag @s remove custom_item_spawn

#capsules and enchanting only
execute if entity @s[scores={rNumber=1..20}] run return run function sprint_racer:items/container_spawn/capsule_seeded_timeattack

#special containers
execute if entity @s[scores={rNumber=21}] run return run function sprint_racer:items/container_spawn/enchanting_table
execute if entity @s[scores={rNumber=22}] run return run function sprint_racer:items/container_spawn/cake

#obliterator
#fishing rod
#fishing rod 2
#battle bat
#battle basher
#potato
#elite potato
#custom
execute if entity @s[scores={rNumber=23..99}] run return run function sprint_racer:items/container_spawn/capsule_seeded_timeattack

#custom, no capsule
execute if entity @s[scores={rNumber=100..}] run return run tag @s add custom_item_spawn
