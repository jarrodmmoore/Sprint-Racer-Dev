execute as @e[tag=homer] at @s run function sprint_racer:cheats/homing
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick,limit=1] as @e[tag=homer] at @s run function sprint_racer:cheats/homing
#execute as @e[tag=homer,tag=missile] at @s run function sprint_racer:cheats/homing

tag @e[tag=health_text,type=text_display] add homer

#function sprint_racer:cheats/homing_entity_chance
#function sprint_racer:cheats/homing_entity_chance_rare