#make sure players have the special button that lets them swim faster
tag @s remove hasButton
tag @s[nbt={Inventory:[{Slot:103b,id:"minecraft:stone_button"}]}] add hasButton
#execute as @s[tag=!hasButton,tag=!noInventory,tag=!noInventory2] unless entity @s[scores={invisibility=1..}] run function sprint_racer_language:give_button
#execute as @s[scores={invisibility=1..}] as @s[tag=!hasButton,tag=!noInventory] at @s if block ~ ~ ~ water run function sprint_racer_language:give_button
execute as @s[tag=!hasButton,tag=!noInventory,tag=!noInventory2] run function sprint_racer_language:give_button

#kart
execute if entity @s[scores={kart_model=1..}] at @s run function sprint_racer:kart_head