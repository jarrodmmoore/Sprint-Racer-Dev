execute if entity @s[tag=playerstart] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_playerstart
execute if entity @s[tag=finishline] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_finishline
execute if entity @s[tag=checkpoint] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_checkpoint
execute if entity @s[tag=speedboost] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_speedboost
execute if entity @s[tag=resistance] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_resistance
execute if entity @s[tag=elytrajump] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_elytrajump
execute if entity @s[tag=activator] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_activator
execute if entity @s[tag=itemchest] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_itemchest
execute if entity @s[tag=jumpboost] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_jumpboost
execute if entity @s[tag=teleporter,tag=!teledest] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_teleport_source
execute if entity @s[tag=teleporter,tag=teledest] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_teleport_destination
execute if entity @s[tag=scriptmove] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_scriptmove
execute if entity @s[tag=posCalc] positioned ~ ~.5 ~ run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_poscalc
execute if entity @s[tag=AIBC] run function sprint_racer:game_logic/2/spawn/name_breadcrumb_index

#dlc
execute if entity @s[tag=tatarget] run function sprint_racer_language:_dlc_4/editor_mode/visual_nametag/name_target