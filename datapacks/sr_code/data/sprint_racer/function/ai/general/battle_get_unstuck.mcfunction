#recovery points nearby?
execute at @s if entity @e[type=marker,distance=..5,tag=AIBC,scores={AIBC_event=9,AIBC_condition=1..5}] run tag @s add recoveryPoint
execute at @s if entity @e[type=marker,distance=..10,tag=AIBC,scores={AIBC_event=9,AIBC_condition=6..10}] run tag @s add recoveryPoint
execute at @s if entity @e[type=marker,distance=..15,tag=AIBC,scores={AIBC_event=9,AIBC_condition=11..15}] run tag @s add recoveryPoint
execute at @s if entity @e[type=marker,distance=..20,tag=AIBC,scores={AIBC_event=9,AIBC_condition=16..20}] run tag @s add recoveryPoint
execute at @s if entity @e[type=marker,distance=..25,tag=AIBC,scores={AIBC_event=9,AIBC_condition=21..25}] run tag @s add recoveryPoint
execute at @s if entity @e[type=marker,distance=..30,tag=AIBC,scores={AIBC_event=9,AIBC_condition=26..30}] run tag @s add recoveryPoint

execute if score @s recoverAttempts matches 2.. run tag @s remove recoveryPoint

execute if entity @s[tag=recoveryPoint,tag=!warpstuck] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/target_nearest_instead

#execute unless entity @s[tag=warpstuck] unless entity @s[tag=recoveryPoint] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/battle_get_unstuck
execute unless entity @s[tag=warpstuck] unless entity @s[tag=recoveryPoint] unless score @s aiBehavior matches 2 run function sprint_racer:ai/general/battle_get_unstuck_roam
execute if entity @s[tag=warpstuck] run function sprint_racer:ai/general/skip_to_target

scoreboard players set @s[tag=recoveryPoint] aiStuckTime 0
scoreboard players set @s[tag=recoveryPoint] aiStuckTime2 0
tag @s[tag=recoveryPoint] remove recoveryPoint