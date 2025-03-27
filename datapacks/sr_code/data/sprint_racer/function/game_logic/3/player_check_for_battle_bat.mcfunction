#replace fake bat with the real one when the time comes
execute if entity @s[scores={timeSinceDeath=101..120}] if items entity @s inventory.* wooden_sword[custom_data~{battlebat:1b,fakeBat:1b}] run clear @s wooden_sword[custom_data~{fakeBat:1b}]

#check for bat
tag @s[tag=hasBBat] remove hasBBat
execute if items entity @s hotbar.* wooden_sword[custom_data~{battlebat:1b}] run tag @s add hasBBat
clear @s[tag=!hasBBat] wooden_sword

#give basic battle bat
execute if entity @s[tag=!hasBBat,tag=!noInventory,scores={hp=1..}] unless entity @s[scores={death=1..}] if entity @s[scores={timeSinceDeath=..100}] run function sprint_racer_language:_dlc_5/gameplay/give_battle_bat_fake
execute if entity @s[tag=!hasBBat,tag=!noInventory,scores={hp=1..}] unless entity @s[scores={death=1..}] unless entity @s[scores={timeSinceDeath=..100}] run function sprint_racer_language:_dlc_6/gameplay/give_battle_bat
