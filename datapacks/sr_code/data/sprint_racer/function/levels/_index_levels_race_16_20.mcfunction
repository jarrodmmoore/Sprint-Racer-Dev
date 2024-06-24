#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=16}] run function sprint_racer:levels/hurricane_islands/main
execute if entity @s[scores={rNumber=17}] run function sprint_racer:levels/crash_course/main
execute if entity @s[scores={rNumber=18}] run function sprint_racer:levels/the_gauntlet/main
execute if entity @s[scores={rNumber=19}] run function sprint_racer:levels/fossil_cove/main
execute if entity @s[scores={rNumber=20}] run function sprint_racer:levels/frostbite_village/main