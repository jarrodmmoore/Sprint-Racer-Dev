function sprint_racer:ai/general/clear_old_ai_targets

scoreboard players set @s AIBC_id 0
scoreboard players set @s AIBC_dir1 0
scoreboard players set @s AIBC_dir2 0
scoreboard players set @s AIBC_dir3 0
scoreboard players set @s AIBC_dir4 0
scoreboard players set @s AIBC_hook 0
scoreboard players set @s AIBC_spread 0
scoreboard players set @s AIBC_event 0
scoreboard players set @s AIBC_condition 0

scoreboard players set @s aiBehavior 1
scoreboard players set @s aiRotOffset 0
scoreboard players set @s aiSubBehavior 0
scoreboard players set @s aiSubBTimer 0
tag @s remove aiswimup

#no AI breadcrumbs within 80m? just start roaming randomly
execute unless entity @e[tag=AIBC,limit=1,tag=!AIBC_deadend,tag=!elytraPath,distance=..80] run function sprint_racer:ai/general/battle_get_unstuck_roam

#target nearest AI breadcrumb if there's any within 80m
execute if entity @e[tag=AIBC,limit=1,tag=!AIBC_deadend,tag=!elytraPath,distance=..80] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/_index_target