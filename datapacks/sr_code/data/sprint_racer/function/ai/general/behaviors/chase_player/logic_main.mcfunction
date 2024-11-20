#@e[tag=aiTargetG] is who we care about

#aiRotSet
#aiRotOffset
#aiRotOSTime

#possibly run away when on low health
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber

execute if entity @s[tag=!ai_fearful,scores={aiSkill=..1,hitboxHP=..1004,rNumber=20..50}] run tag @s add runAway
execute if entity @s[tag=!ai_fearful,scores={aiSkill=2,hitboxHP=..1006,rNumber=20..50}] run tag @s add runAway
execute if entity @s[tag=!ai_fearful,scores={aiSkill=3..,hitboxHP=..1008,rNumber=20..50}] run tag @s add runAway

#extra likely to run away when playing lives elimination mode
execute if entity @s[tag=ai_fearful,scores={aiSkill=..1,hitboxHP=..1008,rNumber=20..50}] run tag @s add runAway
execute if entity @s[tag=ai_fearful,scores={aiSkill=2,hitboxHP=..1010,rNumber=20..50}] run tag @s add runAway
execute if entity @s[tag=ai_fearful,scores={aiSkill=3..,hitboxHP=..1012,rNumber=20..50}] run tag @s add runAway



#possibly go back to following breadcrumbs after being in the player's grill for a while
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber

execute if entity @e[tag=aiTargetG,distance=..4] if entity @s[scores={aiSkill=..1,rNumber=35..50}] run tag @s add goAway
execute if entity @e[tag=aiTargetG,distance=..3] if entity @s[scores={aiSkill=2,rNumber=40..50}] run tag @s add goAway
execute if entity @e[tag=aiTargetG,distance=..2] if entity @s[scores={aiSkill=3..,rNumber=45..50}] run tag @s add goAway
execute unless entity @e[tag=aiTargetG,distance=..40] run tag @s add goAway


execute if entity @e[tag=runAway,tag=!goAway] run scoreboard players set @s aiRunAwayTime 0
execute if entity @e[tag=runAway,tag=!goAway] run scoreboard players set @s aiRotSet 180
execute if entity @e[tag=runAway,tag=!goAway] run scoreboard players set @s aiBehavior 4

execute if entity @s[tag=goAway] run function sprint_racer:ai/general/clear_old_ai_targets
execute if entity @s[tag=goAway] run scoreboard players set @s aiRotSet 0
execute if entity @s[tag=goAway] run scoreboard players set @s aiActCCooldown 174
execute if entity @s[tag=goAway] run scoreboard players set @s aiBehavior 1


tag @s remove runAway
tag @s remove goAway


#randomized logic intervals
scoreboard players operation @s aiActCCooldown = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=5..10}] rNumber