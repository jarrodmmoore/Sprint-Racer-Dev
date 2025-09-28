execute if entity @s[scores={aiHasItem9=1..,inputCooldown=..0}] run tag @s add doIt


scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] rNumber

#hard bot: hold off if there's a mega alternative nearby
execute if entity @s[tag=!megaShortcut,tag=doIt,scores={aiSkill=3..}] at @s if entity @e[distance=..70,type=marker,tag=AIBC,scores={AIBC_event=6},tag=megaShortcut] run return run tag @s remove doIt
#=====

#mega shortcut
#SKILL LV 1 = 0% CHANCE
#SKILL LV 2 = 10% CHANCE
#SKILL LV 3 = 40% CHANCE
#TRYHARD = 74% CHANCE
execute if entity @s[tag=megaShortcut,scores={aiSkill=1}] run tag @s remove doIt
execute if entity @s[tag=megaShortcut,scores={aiSkill=2,rNumber=6..50}] run tag @s remove doIt
execute if entity @s[tag=megaShortcut,tag=!tryhard,scores={aiSkill=3..,rNumber=21..50}] run tag @s remove doIt
execute if entity @s[tag=megaShortcut,tag=tryhard,scores={rNumber=37..50}] run tag @s remove doIt


tag @s[tag=very_easy_ai] remove doIt
tag @s[tag=very_easy_ai] remove doIt2

execute if entity @s[tag=doIt] run function sprint_racer:ai/general/item_logic/9/use
execute if entity @s[tag=doIt] run scoreboard players operation @s AIBC_id = @s AIBC_condition


execute if entity @s[tag=!doIt,scores={aiHasItem29=1..,inputCooldown=..0}] run tag @s add doIt2
execute if entity @s[tag=doIt2] run function sprint_racer:ai/general/item_logic/29/use
execute if entity @s[tag=doIt2] run scoreboard players operation @s AIBC_id = @s AIBC_condition

tag @s remove doIt
tag @s remove doIt2