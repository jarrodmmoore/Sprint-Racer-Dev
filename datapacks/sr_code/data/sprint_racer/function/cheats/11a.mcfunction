execute as @e[tag=homer] at @s run function sprint_racer:cheats/homing
execute if entity @e[tag=w,type=armor_stand,tag=halftick,limit=1] as @e[tag=homer] at @s run function sprint_racer:cheats/homing
#execute as @e[tag=homer,tag=missile] at @s run function sprint_racer:cheats/homing

tag @e[tag=floatup] add homer

#function sprint_racer:cheats/homing_entity_chance
#function sprint_racer:cheats/homing_entity_chance_rare