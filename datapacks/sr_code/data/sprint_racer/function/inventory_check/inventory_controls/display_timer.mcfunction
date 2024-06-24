scoreboard players set #executed value 1

scoreboard players set @s afkTime 0

tag @s[tag=timer] add switchOff

#toggle timer
tag @s[tag=switchOff] remove timer
tag @s[tag=!switchOff] add timer

tag @s remove navigator
tag @s remove miniHUD

#execute if entity @s[tag=!switchOff] run function sprint_racer_language:enabled_timer
#execute if entity @s[tag=switchOff] run function sprint_racer_language:enabled_minimal_hud
execute if entity @s[tag=switchOff] run tag @s add miniHUD

tag @s[tag=switchOff] remove switchOff