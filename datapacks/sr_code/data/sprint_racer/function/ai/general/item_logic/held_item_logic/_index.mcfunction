execute unless entity @s[scores={aiHoldingItem=1..}] run function sprint_racer:ai/general/item_logic/put_away_item

execute if entity @s[scores={aiHoldingItem=1..5}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_1_5
execute if entity @s[scores={aiHoldingItem=6..10}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_6_10
execute if entity @s[scores={aiHoldingItem=11..15}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_11_15
execute if entity @s[scores={aiHoldingItem=16..20}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_16_20
execute if entity @s[scores={aiHoldingItem=21..25}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_21_25
execute if entity @s[scores={aiHoldingItem=26..30}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_26_30
execute if entity @s[scores={aiHoldingItem=31..35}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_31_35
execute if entity @s[scores={aiHoldingItem=36..40}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_36_40
execute if entity @s[scores={aiHoldingItem=41..}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index_misc

execute unless entity @s[scores={aiActICooldown=6..}] run scoreboard players set @s aiHoldingItem 0