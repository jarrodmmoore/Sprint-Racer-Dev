#only allow this function to execute if we're in the Custom Track Manager
execute unless score global gameState matches 10 run return run scoreboard players reset @s tTrackEditor

#can't be in spectator mode
execute if entity @s[gamemode=spectator] run return run scoreboard players reset @s tTrackEditor
#=====

execute if score @s tTrackEditor matches 1000..1099 run function sprint_racer:boq/trigger_track_editor_0_99
execute if score @s tTrackEditor matches 1100..1199 run function sprint_racer:boq/trigger_track_editor_100_199
execute if score @s tTrackEditor matches 1200..1299 run function sprint_racer:boq/trigger_track_editor_200_299

#clean input
scoreboard players reset @s tTrackEditor