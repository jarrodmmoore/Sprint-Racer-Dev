scoreboard players remove @s lifespan 1

execute if score #halftick value matches 0 if score @s lifespan matches ..0 run return run function sprint_racer:entity_lifespan_expire
execute if score #halftick value matches 1 if score @s lifespan matches ..-1 run return run function sprint_racer:entity_lifespan_expire

#execute if entity @s[tag=w] run return run function sprint_racer:entity_lifespan_w