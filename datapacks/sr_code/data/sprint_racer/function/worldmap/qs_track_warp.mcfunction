#grand prix setup: automatically add the track to the list. don't warp to it
execute if score global gameState matches 11 run tag @s add qsDirectChoose
execute if score global gameState matches 11 run function sprint_racer:game_logic/11/choose_track
execute if score global gameState matches 11 run scoreboard players reset @s qsTrackWarp
execute if score global gameState matches 11 run return 0


#conversion for battle mode tracks...
scoreboard players operation #targetTrack value = @s qsTrackWarp
execute if score @s qsTrackWarp matches 1000.. run scoreboard players remove #targetTrack value 1000

#backup coordinates
scoreboard players set #getX value 2471
scoreboard players set #getZ value 267

#get the coordinates
execute if score @s qsTrackWarp matches 1..999 as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand] if score @s rNumber = #targetTrack value run function sprint_racer:worldmap/qs_track_warp_race_coords
execute if score @s qsTrackWarp matches 1000.. as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand] if score @s rNumber = #targetTrack value run function sprint_racer:worldmap/qs_track_warp_battle_coords

#do warp
effect give @s resistance 5 100 true
effect give @s blindness 2 100 true
effect give @s slow_falling 2 1 true
scoreboard players operation @s checkpoint_x = #getX value
scoreboard players set @s checkpoint_y 100
scoreboard players operation @s checkpoint_z = #getZ value
function sprint_racer:warp_to_saved_coords/_go

#dispose of the warp index?
scoreboard players reset @s qsTrackWarp