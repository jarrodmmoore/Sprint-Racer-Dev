#tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet

execute if entity @s[scores={speedlevel=..-2}] run function sprint_racer:ai/general/movement/speed_level_2d/n2
execute if entity @s[scores={speedlevel=-1}] run function sprint_racer:ai/general/movement/speed_level_2d/n1
execute if entity @s[scores={speedlevel=0}] run function sprint_racer:ai/general/movement/speed_level_2d/n0

execute if entity @s[scores={speedlevel=1}] run function sprint_racer:ai/general/movement/speed_level_2d/1
execute if entity @s[scores={speedlevel=2}] run function sprint_racer:ai/general/movement/speed_level_2d/2
execute if entity @s[scores={speedlevel=3}] run function sprint_racer:ai/general/movement/speed_level_2d/3
execute if entity @s[scores={speedlevel=4}] run function sprint_racer:ai/general/movement/speed_level_2d/4
execute if entity @s[scores={speedlevel=5}] run function sprint_racer:ai/general/movement/speed_level_2d/5
execute if entity @s[scores={speedlevel=6}] run function sprint_racer:ai/general/movement/speed_level_2d/6
execute if entity @s[scores={speedlevel=7..}] unless score global gameState matches 3 run function sprint_racer:ai/general/movement/speed_level_2d/7_varying
execute if entity @s[scores={speedlevel=7..}] if score global gameState matches 3 run function sprint_racer:ai/general/movement/speed_level_2d/7