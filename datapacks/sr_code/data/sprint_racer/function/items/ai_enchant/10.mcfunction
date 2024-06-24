#this will loop up to 10 times via function recursion
scoreboard players remove @s aiHasItem10 1
scoreboard players remove @s aiHasNormal 1
scoreboard players remove @s aiHasSBoost 1
scoreboard players add @s enchantQty 1
execute if entity @s[scores={enchantQty=..9,aiHasItem10=1..}] run function sprint_racer:items/ai_enchant/10

#now, due to the magic of recursion, this gets executed "enchantQty" number of times
function sprint_racer_language:gameplay/give_item/elite10

tag @s[tag=!enchDone] add enchDone