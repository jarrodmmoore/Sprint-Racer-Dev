#this will loop up to 10 times via function recursion
scoreboard players remove @s aiHasItem7 1
scoreboard players remove @s aiHasNormal 1
scoreboard players remove @s aiHasDefense 1
scoreboard players add @s enchantQty 1
execute if entity @s[scores={enchantQty=..9,aiHasItem7=1..}] run function sprint_racer:items/ai_enchant/7

#now, due to the magic of recursion, this gets executed "enchantQty" number of times
function sprint_racer_language:gameplay/give_item/elite7

tag @s[tag=!enchDone] add enchDone