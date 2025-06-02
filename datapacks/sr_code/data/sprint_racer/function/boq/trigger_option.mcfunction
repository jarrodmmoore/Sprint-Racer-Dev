#only allow this function to execute if we're in the lobby or the Custom Track Manager
execute unless score global gameState matches 0 unless score global gameState matches 10 run return run scoreboard players reset @s tOption

#can't be in spectator mode
execute if entity @s[gamemode=spectator] run return run scoreboard players reset @s tOption
#=====

execute if score @s tOption matches 1000..1099 run function sprint_racer:boq/trigger_option_0_99
#...

#clean input
scoreboard players reset @s tOption