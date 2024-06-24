#make sure player has the item

tag @s remove hasCarrot
tag @s remove invalidCarrot
execute if items entity @s weapon.mainhand carrot_on_a_stick run tag @s add invalidCarrot
execute if items entity @s weapon.offhand carrot_on_a_stick run tag @s add hasCarrot

execute if entity @s[tag=invalidCarrot] run function sprint_racer:carrot_on_stick_invalid


#give carrot on stick if missing
execute if entity @s[tag=!hasCarrot] run clear @s minecraft:carrot_on_a_stick
execute as @s[tag=!hasCarrot,tag=!noInventory,tag=!noInventory2] run function sprint_racer_language:give_carrot_on_stick