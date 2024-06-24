#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=51}] run function sprint_racer:levels/candy_land/main
execute if entity @s[scores={rNumber=52}] run function sprint_racer:levels/gummi_gorge/main
execute if entity @s[scores={rNumber=53}] run function sprint_racer:levels/nether_castle/main
#...
#...