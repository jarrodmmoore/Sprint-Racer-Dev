#replace fake bat with the real one when the time comes
execute if entity @s[scores={timeSinceDeath=11..120,invisibility=..0}] if entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword",components:{"minecraft:custom_data":{battlebat:1b,fakeBat:1b}}}]}] run clear @s wooden_sword

#check for bat
tag @s[tag=hasBBat] remove hasBBat
execute if items entity @s hotbar.* wooden_sword[custom_data~{battlebat:1b}] run tag @s add hasBBat
clear @s[tag=!hasBBat] wooden_sword

#give basic battle bat
execute if entity @s[tag=!hasBBat,tag=!noInventory,scores={hp=1..}] unless entity @s[scores={death=1..}] if entity @s[scores={timeSinceDeath=..10}] run function sprint_racer_language:_dlc_5/gameplay/give_battle_bat_fake
execute if entity @s[tag=!hasBBat,tag=!noInventory,scores={hp=1..}] unless entity @s[scores={death=1..}] unless entity @s[scores={timeSinceDeath=..10}] run function sprint_racer_language:_dlc_6/gameplay/give_battle_bat
