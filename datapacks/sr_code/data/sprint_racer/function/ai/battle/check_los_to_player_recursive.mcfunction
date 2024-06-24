scoreboard players remove #recursions value 1

#did we find it?
execute positioned ~-.5 ~-3 ~-.5 if entity @e[tag=checkLOS,limit=1,dx=1,dy=3,dz=1] run scoreboard players set #checkLOS value 1

#not found? keep looking (unless we hit a solid block that will block LOS)
execute if score #recursions value matches 1.. positioned ^ ^ ^.4 if block ~ ~ ~ #sprint_racer:missile_do_not_explode run function sprint_racer:ai/battle/check_los_to_player_recursive