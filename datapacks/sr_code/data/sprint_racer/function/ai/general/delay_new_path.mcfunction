scoreboard players remove @s aiDelayNewPath 1

execute if entity @s[scores={aiDelayNewPath=..0}] at @s run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/target_nearest_instead

scoreboard players reset @s[scores={aiDelayNewPath=..0}] aiDelayNewPath