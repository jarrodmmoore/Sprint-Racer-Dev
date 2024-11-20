scoreboard players remove @s lifespan 1

execute if entity @s[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={lifespan=..0}] run return run function sprint_racer:entity_lifespan_w

execute if score #halftick value matches 0 run kill @s[scores={lifespan=..0}]
execute if score #halftick value matches 1 run kill @s[scores={lifespan=..-1}]

scoreboard players reset @s[scores={lifespan=..-1}] lifespan