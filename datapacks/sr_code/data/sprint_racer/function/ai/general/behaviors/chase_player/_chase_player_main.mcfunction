scoreboard players set @s aiRotSet 0

execute if entity @s[tag=ai1] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_1
execute if entity @s[tag=ai2] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_2
execute if entity @s[tag=ai3] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_3
execute if entity @s[tag=ai4] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_4
execute if entity @s[tag=ai5] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_5
execute if entity @s[tag=ai6] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_6
execute if entity @s[tag=ai7] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_7
execute if entity @s[tag=ai8] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_8
execute if entity @s[tag=ai9] run function sprint_racer:ai/general/behaviors/chase_player/check_for_target_9

#run away when on low health
tag @s remove runAway
execute if entity @s[tag=!ai_fearful,scores={aiBehavior=3,aiSkill=..1,hitboxHP=..1003}] run tag @s add runAway
execute if entity @s[tag=!ai_fearful,scores={aiBehavior=3,aiSkill=2,hitboxHP=..1004}] run tag @s add runAway
execute if entity @s[tag=!ai_fearful,scores={aiBehavior=3,aiSkill=3..,hitboxHP=..1005}] run tag @s add runAway
execute if entity @s[tag=ai_fearful,scores={aiBehavior=3,aiSkill=..1,hitboxHP=..1007}] run tag @s add runAway
execute if entity @s[tag=ai_fearful,scores={aiBehavior=3,aiSkill=2,hitboxHP=..1009}] run tag @s add runAway
execute if entity @s[tag=ai_fearful,scores={aiBehavior=3,aiSkill=3..,hitboxHP=..1011}] run tag @s add runAway
execute if entity @e[tag=runAway] run scoreboard players set @s aiRunAwayTime 0
execute if entity @e[tag=runAway] run scoreboard players set @s aiRotSet 180
execute if entity @e[tag=runAway] run scoreboard players set @s aiBehavior 4
tag @s remove runAway

#stop chasing after a while
tag @s remove goAway
scoreboard players add @s aiChaseTime 2
#execute if score #halftick value matches 1 run scoreboard players add @s aiChaseTime 1
execute if entity @s[scores={aiChaseTime=130..}] run tag @s add goAway
execute if entity @s[tag=goAway] run scoreboard players set @s aiRotOffset 0
execute if entity @s[tag=goAway] run scoreboard players set @s aiBehavior 1
execute if entity @s[tag=goAway] run scoreboard players set @s aiActCCooldown 140
execute if entity @s[tag=goAway] run function sprint_racer:ai/general/clear_old_ai_targets
tag @s remove goAway