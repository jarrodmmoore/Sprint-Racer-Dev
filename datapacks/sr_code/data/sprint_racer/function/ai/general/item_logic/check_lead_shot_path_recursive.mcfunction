#scoreboard players add @s aiTDistance 1

#execute at @s facing entity @e[tag=projectedtarget] feet run tp @s ^ ^ ^1
##execute at @s unless block ~ ~ ~ #sprint_racer:missile_do_not_explode unless entity @s[scores={aiTDistance=..110}] run kill @s
#execute at @s unless block ~ ~ ~ air unless entity @s[scores={aiTDistance=..110}] run kill @s
#execute at @s if entity @e[tag=projectedtarget,distance=..2] run tag @s add yee

#execute unless entity @s[tag=yee] run function sprint_racer:ai/general/item_logic/check_lead_shot_path_recursive

#no longer will this function waste disk space for no reason!
#after 4 years i've decided to use it again. properly this time.
scoreboard players remove #LOS_range value 1
#found the target?
execute if entity @e[tag=projectedTarget,type=marker,distance=..2] run scoreboard players set #good2throw2 value 1
#keep looking. stop if we run into a solid block we can't shoot through
execute if score #LOS_range value matches 1.. if score #good2throw2 value matches 0 positioned ^ ^ ^1 if block ~ ~ ~ #sprint_racer:missile_do_not_explode run function sprint_racer:ai/general/item_logic/check_lead_shot_path_recursive