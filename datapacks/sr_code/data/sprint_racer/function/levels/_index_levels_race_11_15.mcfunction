#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=11}] run function sprint_racer:levels/the_dragon/main
execute if entity @s[scores={rNumber=12}] run function sprint_racer:levels/suspension_mountain/main
execute if entity @s[scores={rNumber=13}] run function sprint_racer:levels/highlight_city/main
execute if entity @s[scores={rNumber=14}] run function sprint_racer:levels/green_labyrinth/main
execute if entity @s[scores={rNumber=15}] run function sprint_racer:levels/iceberg_alley/main