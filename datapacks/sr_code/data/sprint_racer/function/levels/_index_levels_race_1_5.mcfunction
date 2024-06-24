#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=1}] run function sprint_racer:levels/river_valley/main
execute if entity @s[scores={rNumber=2}] run function sprint_racer:levels/highlight_stadium/main
execute if entity @s[scores={rNumber=3}] run function sprint_racer:levels/sakura_city/main
execute if entity @s[scores={rNumber=4}] run function sprint_racer:levels/seaside_village/main
execute if entity @s[scores={rNumber=5}] run function sprint_racer:levels/laeto_forest/main