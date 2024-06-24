scoreboard players set @s aiRotOffset 180
scoreboard players set @s aiRotOSTime 5

scoreboard players set @s[scores={aiActCCooldown=4..}] aiActCCooldown 3

execute if entity @s[tag=ai1] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_1
execute if entity @s[tag=ai2] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_2
execute if entity @s[tag=ai3] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_3
execute if entity @s[tag=ai4] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_4
execute if entity @s[tag=ai5] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_5
execute if entity @s[tag=ai6] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_6
execute if entity @s[tag=ai7] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_7
execute if entity @s[tag=ai8] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_8
execute if entity @s[tag=ai9] run function sprint_racer:ai/general/behaviors/evade_player/check_for_target_9

#stop running after a short while
tag @s remove goAway
scoreboard players add @s aiRunAwayTime 2
#execute if score #halftick value matches 1 run scoreboard players add @s aiRunAwayTime 1
execute if entity @s[scores={aiRunStuckTime=21..}] run tag @s add goAway
execute if entity @s[scores={aiSkill=..1,aiRunAwayTime=61..}] run tag @s add goAway
execute if entity @s[scores={aiSkill=2,aiRunAwayTime=25..}] run tag @s add goAway
execute if entity @s[scores={aiSkill=3..,aiRunAwayTime=5..}] run tag @s add goAway
execute if entity @s[tag=goAway] run scoreboard players set @s aiActCCooldown 140
execute if entity @s[tag=goAway] run scoreboard players set @s aiChaseTime 60
execute if entity @s[tag=goAway] run scoreboard players set @s aiRotSet 0
execute if entity @s[tag=goAway] run scoreboard players set @s aiRotOffset 0
execute if entity @s[tag=goAway] run scoreboard players set @s aiRotOSTime 5
execute if entity @s[tag=goAway] run scoreboard players set @s aiBehavior 1
execute if entity @s[tag=goAway] run function sprint_racer:ai/general/clear_old_ai_targets
tag @s remove goAway