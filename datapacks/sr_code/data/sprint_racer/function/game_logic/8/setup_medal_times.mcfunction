scoreboard objectives remove medalsTR

#make sure "w" has all the times loaded
execute as @e[tag=chosenTrack] run scoreboard players operation @s worldmapID = @s rNumber
scoreboard players set @e[tag=w,type=armor_stand] math 1000
execute as @e[tag=!customtrack,tag=chosenTrack] run scoreboard players operation @s worldmapID += @e[tag=w,limit=1] math
execute as @e[tag=chosenTrack] run function sprint_racer:game_logic/6/worldmap_inspect
scoreboard players reset @e[tag=chosenTrack] worldmapID

function sprint_racer_language:_dlc_1/gameplay/medals_tr_sidebar