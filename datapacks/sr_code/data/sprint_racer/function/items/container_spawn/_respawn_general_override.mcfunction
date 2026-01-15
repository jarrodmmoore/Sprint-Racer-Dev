#pick something based on seed, G
scoreboard players operation @s rNumber = @s itemchestSeedG

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
execute if entity @s[scores={rNumber=23..49}] run return run function sprint_racer:items/container_spawn/capsule_seeded_timeattack

#more special containers
execute if score @s rNumber matches 50 run return run function sprint_racer:items/container_spawn/item_chest
execute if score @s rNumber matches 51 run return run function sprint_racer:items/container_spawn/capsule
execute if score @s rNumber matches 52 run return run function sprint_racer:items/container_spawn/ender_chest
execute if score @s rNumber matches 53 run return run function sprint_racer:items/container_spawn/specialty_random
execute if score @s rNumber matches 54 run return run function sprint_racer:items/container_spawn/specialty_red
execute if score @s rNumber matches 55 run return run function sprint_racer:items/container_spawn/specialty_yellow
execute if score @s rNumber matches 56 run return run function sprint_racer:items/container_spawn/specialty_blue
execute if score @s rNumber matches 57 run return run function sprint_racer:items/container_spawn/specialty_green
execute if score @s rNumber matches 58 run return run function sprint_racer:items/container_spawn/specialty_purple

#custom
execute if entity @s[scores={rNumber=61..99}] run return run function sprint_racer:items/container_spawn/capsule_seeded_timeattack

#custom, no capsule
execute if entity @s[scores={rNumber=100..}] run return run tag @s add custom_item_spawn
