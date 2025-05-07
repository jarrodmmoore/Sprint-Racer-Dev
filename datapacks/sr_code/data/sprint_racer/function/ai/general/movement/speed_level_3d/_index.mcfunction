#tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet

#go slightly faster when fully underwater
scoreboard players set #test value 0
execute if entity @s[tag=inWater] if block ~ ~1.1 ~ water run scoreboard players add #test value 1
execute if entity @s[tag=inWater] if block ~ ~1.1 ~ #sprint_racer:waterloggable[waterlogged=true] run scoreboard players add #test value 1
execute if score #test value matches 1.. run function sprint_racer:ai/general/movement/speed_level_3d/full_underwater_multiplier

execute if entity @s[scores={speedlevel=..1}] run function sprint_racer:ai/general/movement/speed_level_3d/1
execute if entity @s[scores={speedlevel=2}] run function sprint_racer:ai/general/movement/speed_level_3d/2
execute if entity @s[scores={speedlevel=3}] run function sprint_racer:ai/general/movement/speed_level_3d/3
execute if entity @s[scores={speedlevel=4}] run function sprint_racer:ai/general/movement/speed_level_3d/4
execute if entity @s[scores={speedlevel=5}] run function sprint_racer:ai/general/movement/speed_level_3d/5
execute if entity @s[scores={speedlevel=6}] run function sprint_racer:ai/general/movement/speed_level_3d/6
execute if entity @s[scores={speedlevel=7..}] run function sprint_racer:ai/general/movement/speed_level_3d/7