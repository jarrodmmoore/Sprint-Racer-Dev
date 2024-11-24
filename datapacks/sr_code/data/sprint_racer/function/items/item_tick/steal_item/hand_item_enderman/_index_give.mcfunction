tag @e[tag=myEndie4] add enderHolder

execute if entity @s[scores={giveItem=0..5}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give_1_5
execute if entity @s[scores={giveItem=6..10}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give_6_10
execute if entity @s[scores={giveItem=11..15}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give_11_15
execute if entity @s[scores={giveItem=16..20}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give_16_20
execute if entity @s[scores={giveItem=21}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/fishing_rod
execute if entity @s[scores={giveItem=100..105}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give_101_105
execute if entity @s[scores={giveItem=106..110}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give_106_110
execute if entity @s[scores={giveItem=111..115}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give_111_115
execute if entity @s[scores={giveItem=116..120}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_give_116_120
execute if entity @s[scores={giveItem=121}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/fishing_rod
execute if entity @s[scores={giveItem=122}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/battle_basher

tag @e[tag=enderHolder] remove enderHolder