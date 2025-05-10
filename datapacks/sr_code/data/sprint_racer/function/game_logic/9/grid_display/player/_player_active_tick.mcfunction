#executed by players in adventure mode

#figure out what track we're looking at and figure out if it's banned

#"test" stores the track id we're looking at
scoreboard players set #test value 0
#"test2" stores whether the selected track exists and is banned
# -1 = nothing selected
# 0 = banned
# 1 = not banned
scoreboard players set #test2 value -1

#raycast to see what we're looking at
scoreboard players set #recursions value 20
execute positioned ~ ~1.65 ~ run function sprint_racer:game_logic/9/grid_display/player/raycast_phase_1
#read the data of the track we're looking at
execute if score #test value matches 1.. if score #trackGridMode value matches 1 as @e[tag=trackStandR,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..}] if score @s rNumber = #test value run function sprint_racer:game_logic/9/grid_display/player/interpret_track_data
execute if score #test value matches 1.. if score #trackGridMode value matches 2 as @e[tag=trackStandB,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..}] if score @s rNumber = #test value run function sprint_racer:game_logic/9/grid_display/player/interpret_track_data

#controls for enabling or banning a track
execute if score #test2 value matches -1 run clear @s lime_dye
execute if score #test2 value matches -1 run clear @s gray_dye

execute if score #test2 value matches 1 run tag @s[tag=hasMap1] remove hasMap1
execute if score #test2 value matches 1 run tag @s[nbt={Inventory:[{Slot:4b,id:"minecraft:lime_dye",components:{"minecraft:custom_data":{trackAllow:1b}}}]}] add hasMap1
execute if score #test2 value matches 1 run clear @s[tag=!hasMap1] lime_dye
execute if score #test2 value matches 1 run item replace entity @s[tag=!hasMap1] hotbar.4 with minecraft:lime_dye[custom_name=["",{translate:"sr.lobby.track_allowed",color:"green",bold:true,italic:false}],custom_data={trackAllow:1b}]
execute if score #test2 value matches 1 if entity @s[scores={carrotInput=1..,inputCooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{trackAllow:1b}}}}] run function sprint_racer:game_logic/9/grid_display/player/ban_selected_track

execute if score #test2 value matches 0 run tag @s[tag=hasMap2] remove hasMap2
execute if score #test2 value matches 0 run tag @s[nbt={Inventory:[{Slot:4b,id:"minecraft:gray_dye",components:{"minecraft:custom_data":{trackDeny:1b}}}]}] add hasMap2
execute if score #test2 value matches 0 run clear @s[tag=!hasMap2] gray_dye
execute if score #test2 value matches 0 run item replace entity @s[tag=!hasMap2] hotbar.4 with minecraft:gray_dye[custom_name=["",{translate:"sr.lobby.track_banned",color:"gray",bold:true,italic:false}],custom_data={trackDeny:1b}]
execute if score #test2 value matches 0 if entity @s[scores={carrotInput=1..,inputCooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{trackDeny:1b}}}}] run function sprint_racer:game_logic/9/grid_display/player/enable_selected_track

#control tips
execute if score #test2 value matches 0 if items entity @s weapon.mainhand gray_dye[custom_data~{trackDeny:1b}] run function sprint_racer_language:_dlc_1/actionbar_control_tips/allow
execute if score #test2 value matches 0 unless items entity @s weapon.mainhand gray_dye[custom_data~{trackDeny:1b}] run title @s actionbar [""]
execute if score #test2 value matches 1 if items entity @s weapon.mainhand lime_dye[custom_data~{trackAllow:1b}] run function sprint_racer_language:_dlc_1/actionbar_control_tips/ban
execute if score #test2 value matches 1 unless items entity @s weapon.mainhand lime_dye[custom_data~{trackAllow:1b}] run title @s actionbar [""]
execute if score #test2 value matches -1 run title @s actionbar [""]

#tag cleanup
tag @s remove focusTrackBan
