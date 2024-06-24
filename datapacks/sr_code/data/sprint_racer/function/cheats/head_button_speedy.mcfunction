#make sure players have the special button that lets them swim faster
tag @s remove hasButton
tag @s[nbt={Inventory:[{Slot:103b,id:"minecraft:birch_button"}]}] add hasButton
execute as @s[tag=!hasButton,tag=!noInventory,tag=!noInventory2] unless entity @s[scores={invisibility=1..}] run function sprint_racer_language:_dlc_1/give_button_speedy
execute as @s[scores={invisibility=1..}] as @s[tag=!hasButton,tag=!noInventory] at @s if block ~ ~ ~ water run function sprint_racer_language:_dlc_1/give_button_speedy