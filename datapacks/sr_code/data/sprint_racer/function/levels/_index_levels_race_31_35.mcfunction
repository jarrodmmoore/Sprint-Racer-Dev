#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=31}] run function sprint_racer:levels/outer_spaceway/main
execute if entity @s[scores={rNumber=32}] run function sprint_racer:levels/highlight_resort/main
execute if entity @s[scores={rNumber=33}] run function sprint_racer:levels/fiery_volcano/main
execute if entity @s[scores={rNumber=34}] run function sprint_racer:levels/hot_air_docks/main
execute if entity @s[scores={rNumber=35}] run function sprint_racer:levels/site_x/main
#TRACK IDs 36 AND ABOVE NEED TO USE THE NEXT FUNCTION UP!