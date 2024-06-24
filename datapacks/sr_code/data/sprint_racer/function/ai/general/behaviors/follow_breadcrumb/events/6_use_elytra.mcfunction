execute if entity @s[scores={aiHasItem12=1..,inputCooldown=..0}] run tag @s add doIt
execute if entity @s[scores={aiHasItem32=1..,inputCooldown=..0}] run tag @s add doIt
execute if entity @s[scores={aiHasItem32=1..,inputCooldown=..0}] run tag @s add doIt2


scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

#non-mega shortcut
#SKILL LV 1 = 100% CHANCE
#SKILL LV 2 = 74% CHANCE
#SKILL LV 3 = 50% CHANCE
#TRYHARD = 0% CHANCE
execute if entity @s[tag=!megaShortcut,scores={aiSkill=2,rNumber=38..50}] run tag @s remove doIt
execute if entity @s[tag=!megaShortcut,tag=!tryhard,scores={aiSkill=3..,rNumber=25..50}] run tag @s remove doIt
execute if entity @s[tag=!megaShortcut,tag=tryhard] run tag @s remove doIt

#no mega alternative? Do it, I guess
execute if entity @s[tag=!megaShortcut,tag=!doIt,scores={aiHasItem12=1..,inputCooldown=..0}] at @s unless entity @e[distance=..120,type=marker,tag=AIBC,scores={AIBC_event=6},tag=megaShortcut] run tag @s add doIt
execute if entity @s[tag=!megaShortcut,tag=!doIt,scores={aiHasItem32=1..,inputCooldown=..0}] at @s unless entity @e[distance=..120,type=marker,tag=AIBC,scores={AIBC_event=6},tag=megaShortcut] run tag @s add doIt

#mega shortcut
#SKILL LV 1 = ~30% CHANCE
#SKILL LV 2 = ~50% CHANCE
#SKILL LV 3 = ~70% CHANCE
#TRYHARD = ~90% CHANCE
execute if entity @s[tag=megaShortcut,scores={aiSkill=1,rNumber=15..50}] run tag @s remove doIt
execute if entity @s[tag=megaShortcut,scores={aiSkill=2,rNumber=25..50}] run tag @s remove doIt
execute if entity @s[tag=megaShortcut,tag=!tryhard,scores={aiSkill=3..,rNumber=37..50}] run tag @s remove doIt
execute if entity @s[tag=megaShortcut,tag=tryhard,scores={aiSkill=3..,rNumber=45..50}] run tag @s remove doIt


tag @s[tag=very_easy_ai] remove doIt


execute if entity @s[tag=doIt,tag=!doIt2] run function sprint_racer:ai/general/item_logic/12/use
execute if entity @s[tag=doIt,tag=doIt2] run function sprint_racer:ai/general/item_logic/32/use
tag @s remove doIt
tag @s remove doIt2