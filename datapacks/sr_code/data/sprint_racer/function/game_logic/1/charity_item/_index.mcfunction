scoreboard players operation @s[tag=ai] timeSinceCheck = @e[tag=currentMaster,limit=1] timeSinceCheck

#absolutely no duping allowed here
clear @s gold_ingot[custom_data~{charityitem:1b}]

execute if entity @s[scores={itemLuck=..1}] run function sprint_racer:game_logic/1/charity_item/item_luck_1
execute if entity @s[scores={itemLuck=2}] run function sprint_racer:game_logic/1/charity_item/item_luck_2
execute if entity @s[scores={itemLuck=3}] run function sprint_racer:game_logic/1/charity_item/item_luck_3
execute if entity @s[scores={itemLuck=4}] run function sprint_racer:game_logic/1/charity_item/item_luck_4
execute if entity @s[scores={itemLuck=5..}] run function sprint_racer:game_logic/1/charity_item/item_luck_5