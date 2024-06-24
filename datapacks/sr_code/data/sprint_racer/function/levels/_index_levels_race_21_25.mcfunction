#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=21}] run function sprint_racer:levels/dead_canyon/main
execute if entity @s[scores={rNumber=22}] run function sprint_racer:levels/haunted_woodland/main
execute if entity @s[scores={rNumber=23}] run function sprint_racer:levels/mushroom_cavern/main
execute if entity @s[scores={rNumber=24}] run function sprint_racer:levels/the_loop/main
execute if entity @s[scores={rNumber=25}] run function sprint_racer:levels/roadroller_park/main