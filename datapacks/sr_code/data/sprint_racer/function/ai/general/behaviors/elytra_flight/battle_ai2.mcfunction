#look for a target if we don't already have one
execute if entity @s[tag=!elytra_specific] unless entity @e[tag=aiElyTarget2] run function sprint_racer:ai/general/behaviors/elytra_flight/battle_tag_random_player
execute if entity @s[tag=elytra_specific] unless entity @e[tag=aiElyTarget2] run function sprint_racer:ai/general/behaviors/elytra_flight/tag_specific_breadcrumb
tag @e[tag=newTarget] add aiElyTarget2
tag @e[tag=newTarget] remove newTarget

#face the target
execute if entity @e[tag=myElytra,tag=needsDirection,nbt={FallFlying:1b}] as @e[tag=myElytra] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=aiElyTarget2] feet
execute if entity @e[tag=myElytra,tag=needsDirection,nbt={FallFlying:1b}] run tag @e[tag=myElytra] remove needsDirection
execute positioned ~-4 0 ~-4 if entity @e[tag=aiElyTarget2,type=marker,tag=AIBC,dx=9,dy=500,dz=9] run function sprint_racer:ai/general/behaviors/elytra_flight/redirect

#when landing, we forget ALL targets, not just the secondary one
#this forces the AI to adopt the data of the nearest breadcrumb instead of backtracking
execute if entity @s[tag=removeElytra] run tag @e[tag=aiTarget2] remove aiTarget2
execute if entity @s[tag=removeElytra] run tag @e[tag=aiElyTarget2] remove aiElyTarget2