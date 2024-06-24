#give item
tag @a remove hasBoostPower
execute as @a[tag=playing] if items entity @s container.* blaze_powder[custom_data~{boostPower:1b}] run tag @s add hasBoostPower
clear @a[tag=!hasBoostPower] blaze_powder[custom_data~{boostPower:1b}]
execute as @a[tag=playing,gamemode=adventure,tag=!noInventory,tag=!hasBoostPower] run function sprint_racer_language:_dlc_5/cheats/give_boost_power

#use item
execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand blaze_powder[custom_data~{boostPower:1b}] unless score @s speedBoost matches 1.. unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] at @s run function sprint_racer:cheats/use_boost_power