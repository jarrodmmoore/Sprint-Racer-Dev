#check for obliterator
tag @s[tag=hasBBat] remove hasBBat
execute if items entity @s hotbar.* observer[custom_data~{eliteObliterator:1b}] run tag @s add hasBBat
clear @s[tag=!hasBBat] observer[custom_data~{eliteObliterator:1b}]

#give obliterator when not invisible
execute if entity @s[tag=!hasBBat,tag=!noInventory,scores={hp=1..}] unless entity @s[scores={death=1..}] unless entity @s[scores={timeSinceDeath=..100}] run function sprint_racer_language:_dlc_6/gameplay/give_obliterator {count:1}
