#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=26}] run function sprint_racer:levels/miners_island/main
execute if entity @s[scores={rNumber=27}] run function sprint_racer:levels/coastal_avenue/main
execute if entity @s[scores={rNumber=28}] run function sprint_racer:levels/cinder_core/main
execute if entity @s[scores={rNumber=29}] run function sprint_racer:levels/sacred_village/main
execute if entity @s[scores={rNumber=30}] run function sprint_racer:levels/monochrome_road/main
#TRACK IDs 31 AND ABOVE NEED TO USE THE NEXT FUNCTION UP!