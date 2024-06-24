tag @s remove doIt

execute if entity @s[scores={aiSkill=2..,aiHasFirework=1..}] run tag @s add doIt
execute if entity @s[tag=tryhard,scores={aiHasFirework=1..}] run tag @s add doIt

execute if entity @s[tag=doIt] run tag @s add fireworkBoost
execute if entity @s[tag=doIt] unless score @s AIBC_id = @s AIBC_condition run scoreboard players operation @s AIBC_id = @s AIBC_condition

tag @s remove doIt