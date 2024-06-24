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

scoreboard players set @s aiRotOffset 0
scoreboard players set @s aiBehavior 1
scoreboard players set @s aiSubBehavior 0
scoreboard players set @s aiSubBTimer 0

scoreboard players set @s aiStuckTime 0
scoreboard players set @s aiStuckTime2 0
scoreboard players set @s aiStuckSwim 0
tag @s remove aiswimup

tag @s add pickrandom
function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/_index_target