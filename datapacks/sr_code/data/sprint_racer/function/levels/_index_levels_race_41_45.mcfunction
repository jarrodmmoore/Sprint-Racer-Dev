#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=41}] run function sprint_racer:levels/space_colony_luna/main
execute if entity @s[scores={rNumber=42}] run function sprint_racer:levels/mountain_park/main
execute if entity @s[scores={rNumber=43}] run function sprint_racer:levels/frostbite_caverns/main
execute if entity @s[scores={rNumber=44}] run function sprint_racer:levels/retro_synthwave/main
execute if entity @s[scores={rNumber=45}] run function sprint_racer:levels/shroom_spring/main
#TRACK IDs 46 AND ABOVE NEED TO USE THE NEXT FUNCTION UP!