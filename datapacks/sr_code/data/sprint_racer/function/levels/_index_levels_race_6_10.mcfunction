#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=6}] run function sprint_racer:levels/petra_mountains/main
execute if entity @s[scores={rNumber=7}] run function sprint_racer:levels/magna_desert/main
execute if entity @s[scores={rNumber=8}] run function sprint_racer:levels/cinder_caverns/main
execute if entity @s[scores={rNumber=9}] run function sprint_racer:levels/logmill/main
execute if entity @s[scores={rNumber=10}] run function sprint_racer:levels/redstone_factory/main