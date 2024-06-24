#make sure player has maps
#and also prevent inventory replaceitem spam
#maps are only given when the player lacks the "hasMaps" tag

tag @s remove hasMaps
tag @s remove hasMap1
tag @s remove hasMap2
tag @s remove hasMap3

execute if entity @s[gamemode=!creative] if items entity @s hotbar.0 filled_map[custom_data~{mapv1:1b}] run tag @s add hasMap1
execute if entity @s[gamemode=!creative] if items entity @s hotbar.1 filled_map[custom_data~{mapv2:1b}] run tag @s add hasMap2
execute if entity @s[gamemode=!creative] if items entity @s hotbar.2 filled_map[custom_data~{mapv3:1b}] run tag @s add hasMap3

tag @s[tag=hasMap1,tag=hasMap2,tag=hasMap3] add hasMaps

#clear @s[tag=!hasMaps] filled_map
clear @s[tag=!hasMap1] filled_map[custom_data~{mapv1:1b}]
clear @s[tag=!hasMap2] filled_map[custom_data~{mapv2:1b}]
clear @s[tag=!hasMap3] filled_map[custom_data~{mapv3:1b}]
tag @s[tag=!hasMaps] add replaceMaps

execute if entity @s[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand filled_map run function sprint_racer:game_logic/0/click_vote