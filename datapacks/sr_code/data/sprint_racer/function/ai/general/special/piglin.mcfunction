scoreboard players add @s aiSpecial 1

execute if entity @s[scores={aiSpecial=170}] run function sprint_racer:ai/general/special/piglin_get_gold_item

scoreboard players set @s[scores={aiSpecial=170..}] aiSpecial 0