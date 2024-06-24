#count down to when we want to check LOS to breadcrumbs next
scoreboard players remove @s roamLookTime 1

#debug, keep the bot in roam mode forever
#scoreboard players set @s aiStuckTime 0
#scoreboard players set @s aiStuckTime2 0

execute if entity @s[tag=ai1] run function sprint_racer:ai/general/behaviors/roam/check_for_target_1
execute if entity @s[tag=ai2] run function sprint_racer:ai/general/behaviors/roam/check_for_target_2
execute if entity @s[tag=ai3] run function sprint_racer:ai/general/behaviors/roam/check_for_target_3
execute if entity @s[tag=ai4] run function sprint_racer:ai/general/behaviors/roam/check_for_target_4
execute if entity @s[tag=ai5] run function sprint_racer:ai/general/behaviors/roam/check_for_target_5
execute if entity @s[tag=ai6] run function sprint_racer:ai/general/behaviors/roam/check_for_target_6
execute if entity @s[tag=ai7] run function sprint_racer:ai/general/behaviors/roam/check_for_target_7
execute if entity @s[tag=ai8] run function sprint_racer:ai/general/behaviors/roam/check_for_target_8
execute if entity @s[tag=ai9] run function sprint_racer:ai/general/behaviors/roam/check_for_target_9