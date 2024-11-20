#this is the same as event 4 except it depends on the switch state

tag @s remove doIt

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] rNumber

#normal shortcut
#SKILL LV 1 = 24% CHANCE
#SKILL LV 2 = 50% CHANCE
#SKILL LV 3 = 74% CHANCE
#TRYHARD = 100% CHANCE

execute if entity @s[tag=!megaShortcut,scores={aiSkill=..1,rNumber=38..50}] run tag @s add doIt
execute if entity @s[tag=!megaShortcut,scores={aiSkill=2,rNumber=25..50}] run tag @s add doIt
execute if entity @s[tag=!megaShortcut,tag=!tryhard,scores={aiSkill=3..,rNumber=13..50}] run tag @s add doIt
execute if entity @s[tag=!megaShortcut,tag=tryhard] run tag @s add doIt

#mega shortcut
#SKILL LV 1 = 0% CHANCE
#SKILL LV 2 = 10% CHANCE
#SKILL LV 3 = 40% CHANCE
#TRYHARD = 74% CHANCE
execute if entity @s[tag=megaShortcut,scores={aiSkill=2,rNumber=45..50}] run tag @s add doIt
execute if entity @s[tag=megaShortcut,tag=!tryhard,scores={aiSkill=3..,rNumber=31..50}] run tag @s add doIt
execute if entity @s[tag=megaShortcut,tag=tryhard,scores={rNumber=13..50}] run tag @s add doIt

tag @s[tag=very_easy_ai] remove doIt

#the switch is off? -> we cancel the alternate route
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=switchON] run tag @s remove doIt

execute if entity @s[tag=doIt] unless score @s AIBC_id = @s AIBC_condition run scoreboard players operation @s AIBC_id = @s AIBC_condition

tag @s remove doIt