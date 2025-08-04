execute unless score global gameState matches 3 run return run item replace entity @s weapon.mainhand with air
#=====

execute if score #battleBatBanned value matches 1.. run item replace entity @s weapon.mainhand with air
execute unless score #battleBatBanned value matches 1.. unless score @s aiBattleBasherDurability matches 1.. run item replace entity @s weapon.mainhand with wooden_sword[item_model="sr/item/battle_bat"]
execute if score @s aiBattleBasherDurability matches 1.. run item replace entity @s weapon.mainhand with wooden_sword[item_model="sr/item/battle_basher",enchantment_glint_override=true]