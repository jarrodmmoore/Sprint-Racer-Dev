#@e[tag=aiTargetG] is who we care about

#aiRotSet
#aiRotOffset
#aiRotOSTime

scoreboard players set @s aiRotOffset 180
scoreboard players set @s aiRotOSTime 5

#possibly go back to following breadcrumbs after escaping the other party
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

execute at @s unless entity @e[tag=aiTargetG,distance=..20] if entity @s[scores={aiSkill=..1,rNumber=20..50}] run tag @s add goAway
execute at @s unless entity @e[tag=aiTargetG,distance=..15] if entity @s[scores={aiSkill=2,rNumber=25..50}] run tag @s add goAway
execute at @s unless entity @e[tag=aiTargetG,distance=..10] if entity @s[scores={aiSkill=3..,rNumber=40..50}] run tag @s add goAway

#don't run into pits, silly goose
execute if entity @e[tag=aiTargetG,distance=..30] at @s facing entity @e[tag=aiTargetG,limit=1,sort=nearest] feet rotated ~180 0 if block ^ ^ ^3 #sprint_racer:ai_not_solid if block ^ ^-1 ^3 #sprint_racer:ai_not_solid if block ^ ^-2 ^3 #sprint_racer:ai_not_solid if block ^ ^-3 ^3 #sprint_racer:ai_not_solid run tag @s add goAway

#don't go off course
execute at @s if block ~ 0 ~ red_wool run tag @s add goAway

#30 blocks away, stop running away no matter what
execute unless entity @e[tag=aiTargetG,distance=..30] run tag @s add goAway

execute if entity @s[tag=goAway] run function sprint_racer:ai/general/clear_old_ai_targets
execute if entity @s[tag=goAway] run scoreboard players set @s aiRotOffset 0
execute if entity @s[tag=goAway] run scoreboard players set @s aiRotSet 0
execute if entity @s[tag=goAway] run scoreboard players set @s aiRotOSTime 5
execute if entity @s[tag=goAway] run scoreboard players set @s aiActCCooldown 140
execute if entity @s[tag=goAway] run scoreboard players set @s aiChaseTime 60
execute if entity @s[tag=goAway] run scoreboard players set @s aiBehavior 1


tag @s remove runAway
tag @s remove goAway


#randomized logic intervals
scoreboard players operation @s aiActCCooldown = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..3}] rNumber