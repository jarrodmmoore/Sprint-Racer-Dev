execute if entity @s[tag=activator] run function sprint_racer:game_logic/2/convert_aec_to_marker/activator
execute if entity @s[tag=checkpoint] run function sprint_racer:game_logic/2/convert_aec_to_marker/checkpoint
execute if entity @s[tag=elytrajump] run function sprint_racer:game_logic/2/convert_aec_to_marker/elytrajump
execute if entity @s[tag=finishline] run function sprint_racer:game_logic/2/convert_aec_to_marker/finishline
execute if entity @s[tag=itemchest] run function sprint_racer:game_logic/2/convert_aec_to_marker/itemchest
execute if entity @s[tag=jumpboost] run function sprint_racer:game_logic/2/convert_aec_to_marker/jumpboost
execute if entity @s[tag=playerstart] run function sprint_racer:game_logic/2/convert_aec_to_marker/playerstart
execute if entity @s[tag=resistance] run function sprint_racer:game_logic/2/convert_aec_to_marker/resistance
execute if entity @s[tag=scriptmove] run function sprint_racer:game_logic/2/convert_aec_to_marker/scriptmove
execute if entity @s[tag=speedboost] run function sprint_racer:game_logic/2/convert_aec_to_marker/speedboost
execute if entity @s[tag=teleporter] run function sprint_racer:game_logic/2/convert_aec_to_marker/teleporter
execute if entity @s[tag=AIBC] run function sprint_racer:game_logic/2/convert_aec_to_marker/breadcrumb

#dlc
execute if entity @s[tag=tatarget] run function sprint_racer:game_logic/2/convert_aec_to_marker/target

scoreboard players add global markerConvert 1