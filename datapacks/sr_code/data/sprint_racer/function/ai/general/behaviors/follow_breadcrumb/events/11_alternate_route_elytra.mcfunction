tag @s remove doIt

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

#likely to take alternate route if we have elytra
#extra likely if we're also high skill AI

execute if entity @s[tag=!tryhard,scores={aiSkill=..1,aiHasItem12=1..,rNumber=30..50}] run tag @s add doIt
execute if entity @s[tag=!tryhard,scores={aiSkill=2,aiHasItem12=1..,rNumber=20..50}] run tag @s add doIt
execute if entity @s[tag=!tryhard,scores={aiSkill=3..,aiHasItem12=1..,rNumber=10..50}] run tag @s add doIt
execute if entity @s[tag=tryhard,scores={aiHasItem12=1..,rNumber=5..50}] run tag @s add doIt

execute if entity @s[tag=!tryhard,scores={aiSkill=..1,aiHasItem32=1..,rNumber=30..50}] run tag @s add doIt
execute if entity @s[tag=!tryhard,scores={aiSkill=2,aiHasItem32=1..,rNumber=20..50}] run tag @s add doIt
execute if entity @s[tag=!tryhard,scores={aiSkill=3..,aiHasItem32=1..,rNumber=10..50}] run tag @s add doIt
execute if entity @s[tag=tryhard,scores={aiHasItem32=1..,rNumber=5..50}] run tag @s add doIt

execute if entity @s[tag=doIt] unless score @s AIBC_id = @s AIBC_condition run scoreboard players operation @s AIBC_id = @s AIBC_condition

tag @s remove doIt