#executed by players in adventure mode

#outputs:
# @s worldmapID = whether we're looking at a custom track, and what type of preview image it has
# @s wmCustomNum = the ID of the track we're looking at

#default: we found nothing
scoreboard players set @s worldmapID 9999
scoreboard players set @s wmCustomNum 0

#figure out what track we're looking at and figure out if it's banned

#"test" stores the track id we're looking at
scoreboard players set #test value 0
#"test2" stores the worldmapID result
# 0 = nothing selected
# ..-1 = something exists
scoreboard players set #test2 value 0

#raycast to see what we're looking at
scoreboard players set #recursions value 20
execute positioned ~ ~1.65 ~ run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/player/raycast_phase_1
#read the data of the track we're looking at
execute if score #test value matches 1.. if score #trackGridMode value matches 1 as @e[tag=customrace,type=armor_stand,scores={customTrackID=1..}] if score @s customTrackID = #test value run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/player/interpret_track_data
execute if score #test value matches 1.. if score #trackGridMode value matches 2 as @e[tag=custombattle,type=armor_stand,scores={customTrackBID=1..}] if score @s customTrackBID = #test value run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/player/interpret_track_data

#found a real track? record data on ourselves
execute if score #test value matches 1.. unless score #test2 value matches 0 run scoreboard players operation @s worldmapID = #test2 value
execute if score #test value matches 1.. unless score #test2 value matches 0 run scoreboard players operation @s wmCustomNum = #test value