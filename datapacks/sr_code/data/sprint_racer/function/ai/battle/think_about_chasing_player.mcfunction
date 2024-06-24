scoreboard players set @s rNumber 1
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,scores={rNumber=1..50}] rNumber

#more likely to chase players when at high HP
execute if entity @s[scores={aiSkill=..1,hitboxHP=1004..,rNumber=20..50}] run tag @s add chaseSomeone
execute if entity @s[scores={aiSkill=2,hitboxHP=1007..,rNumber=20..50}] run tag @s add chaseSomeone
execute if entity @s[scores={aiSkill=3..,hitboxHP=1011..,rNumber=20..50}] run tag @s add chaseSomeone

#might run away when on low hp
execute if entity @s[scores={aiSkill=..1,hitboxHP=..1003,rNumber=20..50,aiRunAwayTime=..0}] run tag @s add runAway
execute if entity @s[scores={aiSkill=2,hitboxHP=..1006,rNumber=20..50,aiRunAwayTime=..0}] run tag @s add runAway
execute if entity @s[scores={aiSkill=3..,hitboxHP=..1010,rNumber=20..50,aiRunAwayTime=..0}] run tag @s add runAway

#randomized logic intervals
scoreboard players operation @s aiActCCooldown = @e[limit=1,sort=random,tag=random,scores={rNumber=30..50}] rNumber

#need line of sight to chase or run
execute unless entity @s[tag=!chaseSomeone,tag=!runAway] at @s run function sprint_racer:ai/battle/check_los_to_player

execute if entity @s[tag=chaseSomeone] run function sprint_racer:ai/general/clear_old_ai_targets
scoreboard players set @s[tag=chaseSomeone] aiBehavior 3
execute if entity @s[tag=runAway] run function sprint_racer:ai/general/clear_old_ai_targets
scoreboard players reset @s[tag=runAway] aiRunAwayTime
scoreboard players set @s[tag=runAway] aiBehavior 4

tag @s remove chaseSomeone
tag @s remove runAway

tag @s remove chaseSomeone