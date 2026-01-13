#options 1051-1058: must be in lobby
execute if score @s tOption matches 1051..1095 unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0},tag=!choosingTrack] run return run function sprint_racer:game_logic/0/quick_warp/_must_be_in_lobby

#only allow this function to execute if we're in the lobby or the Custom Track Manager
execute unless score global gameState matches 0 unless score global gameState matches 10 run return run scoreboard players reset @s tOption

#can't be in spectator mode
execute if entity @s[gamemode=spectator] run return run scoreboard players reset @s tOption
#=====

execute if score @s tOption matches 1000..1099 run function sprint_racer:boq/trigger_option_0_99
#...

#clean input
scoreboard players reset @s tOption