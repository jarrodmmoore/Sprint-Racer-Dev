execute if entity @s[scores={aiHasItem11=1..,inputCooldown=..0}] run tag @s add throwIt


scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

#mega shortcut
#SKILL LV 1 = 0% CHANCE
#SKILL LV 2 = 10% CHANCE
#SKILL LV 3 = 40% CHANCE
#TRYHARD = 74% CHANCE
execute if entity @s[tag=megaShortcut,scores={aiSkill=1}] run tag @s remove throwIt
execute if entity @s[tag=megaShortcut,scores={aiSkill=2,rNumber=6..50}] run tag @s remove throwIt
execute if entity @s[tag=megaShortcut,tag=!tryhard,scores={aiSkill=3..,rNumber=21..50}] run tag @s remove throwIt
execute if entity @s[tag=megaShortcut,tag=tryhard,scores={rNumber=37..50}] run tag @s remove throwIt


tag @s[tag=very_easy_ai] remove throwIt

execute if entity @s[tag=throwIt] run scoreboard players operation global AIBC_condition = @s AIBC_condition
execute if entity @s[tag=throwIt] as @e[type=marker,tag=AIBC] if score @s AIBC_id = global AIBC_condition run tag @s add looktarget

execute if entity @s[tag=throwIt] run function sprint_racer:ai/general/item_logic/11/use

tag @s remove throwIt