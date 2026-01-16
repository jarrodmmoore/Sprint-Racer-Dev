execute if score @s aiHoldingItem matches 41 run item replace entity @s weapon.mainhand with iron_sword[max_damage=1,enchantments={sharpness:2}]
execute if score @s aiHoldingItem matches 42 run item replace entity @s weapon.mainhand with observer[enchantments={sharpness:2}]

#custom items
execute if score @s aiHoldingItem matches 50.. run function sprint_racer:ai/general/item_logic/visual_held_item/custom with storage sprint_racer:func_args