scoreboard players remove #recursions value 1

execute if entity @e[limit=1,tag=checkCrumbLOS,type=marker,distance=..1] run scoreboard players set #found_los value 1

execute if score #recursions value matches 1.. if score #found_los value matches 0 positioned ^ ^ ^.75 if block ~ ~ ~ #sprint_racer:missile_do_not_explode run function sprint_racer:ai/general/behaviors/roam/check_los_recursive