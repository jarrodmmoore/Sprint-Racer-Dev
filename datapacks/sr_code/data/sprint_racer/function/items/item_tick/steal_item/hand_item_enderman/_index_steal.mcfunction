tag @e[tag=myEndie3] add enderHolder

execute if entity @s[scores={itemStolen=0..5}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal_1_5
execute if entity @s[scores={itemStolen=6..10}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal_6_10
execute if entity @s[scores={itemStolen=11..15}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal_11_15
execute if entity @s[scores={itemStolen=16..20}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal_16_20
execute if entity @s[scores={itemStolen=21}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/fishing_rod
execute if entity @s[scores={itemStolen=100..105}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal_101_105
execute if entity @s[scores={itemStolen=106..110}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal_106_110
execute if entity @s[scores={itemStolen=111..115}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal_111_115
execute if entity @s[scores={itemStolen=116..120}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/_index_steal_116_120
execute if entity @s[scores={itemStolen=121}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/fishing_rod
execute if entity @s[scores={itemStolen=122}] run function sprint_racer:items/item_tick/steal_item/hand_item_enderman/battle_basher

tag @e[tag=enderHolder] remove enderHolder