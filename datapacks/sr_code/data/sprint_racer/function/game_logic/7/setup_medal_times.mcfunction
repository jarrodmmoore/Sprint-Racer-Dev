scoreboard objectives remove medalsTR

#make sure "w" has all the times loaded
execute as @e[tag=chosenTrack] run scoreboard players operation @s worldmapID = @s rNumber
tag @e[tag=chosenTrack,type=armor_stand,tag=customtrack] add wmCustomFocus
execute as @e[tag=chosenTrack] run function sprint_racer:game_logic/6/worldmap_inspect
tag @e[tag=chosenTrack,type=armor_stand,tag=customtrack] remove wmCustomFocus
scoreboard players reset @e[tag=chosenTrack] worldmapID

function sprint_racer_language:_dlc_1/gameplay/medals_tr_sidebar