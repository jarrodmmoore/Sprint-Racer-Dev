scoreboard players set #executed value 1

scoreboard players set @s afkTime 0

tag @s[tag=navigator] add switchOff

#toggle navigator
tag @s[tag=switchOff] remove navigator
tag @s[tag=!switchOff] add navigator

tag @s remove timer
tag @s remove miniHUD
tag @s remove showCheckNav

#execute if entity @s[tag=!switchOff] run function sprint_racer_language:enabled_navigator
#execute if entity @s[tag=switchOff] run function sprint_racer_language:enabled_minimal_hud
execute if entity @s[tag=switchOff] run tag @s add miniHUD

tag @s[tag=switchOff] remove switchOff