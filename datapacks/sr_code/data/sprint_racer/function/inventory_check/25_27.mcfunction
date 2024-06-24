item replace entity @s[scores={inventoryCheck=25}] inventory.24 with air
item replace entity @s[scores={inventoryCheck=26}] inventory.25 with air
#item replace entity @s[scores={inventoryCheck=27}] inventory.26 with air

execute if score #adminmode value matches 0 run item replace entity @s inventory.26 with air
execute if score #adminmode value matches 1 unless entity @s[tag=admin] run item replace entity @s inventory.26 with air