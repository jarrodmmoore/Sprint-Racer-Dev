#tag @s add self

#summon marker ~ ~ ~ {Tags:["trajectorytest"]}
#execute as @e[tag=trajectorytest] at @s run function sprint_racer:ai/general/item_logic/check_lead_shot_path_recursive

#if the test entity got killed due to touching a wall, we decide NOT to lead the shot
#execute unless entity @e[tag=trajectorytest] run tag @s remove leadprojectile

#kill @e[tag=trajectorytest]
#tag @s remove self

scoreboard players set #good2throw2 value 0

#looking for projectedtarget
scoreboard players set #LOS_range value 91
execute facing entity @e[tag=projectedtarget,type=marker] eyes run function sprint_racer:ai/general/item_logic/check_lead_shot_path_recursive

#check failed? don't lead projectile
execute if score #good2throw2 value matches 0 run tag @s remove leadprojectile
