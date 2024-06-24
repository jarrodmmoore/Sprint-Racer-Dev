scoreboard players remove #recursions value 1

#did we find it?
execute positioned ~-.5 ~-2 ~-.5 if entity @e[tag=newTarget,type=armor_stand,limit=1,dx=1,dy=2,dz=1] run scoreboard players set #checkLOS value 1

#not found? keep looking (unless we hit a solid block that will block LOS)
execute if score #recursions value matches 1.. positioned ^ ^ ^.3 if block ~ ~ ~ #sprint_racer:missile_do_not_explode run function sprint_racer:ai/general/behaviors/move_toward_itemchest/check_los_recursive