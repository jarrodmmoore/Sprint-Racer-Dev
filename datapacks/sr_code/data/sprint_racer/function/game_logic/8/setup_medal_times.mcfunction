scoreboard objectives remove medalsTR

#make sure "w" has all the times loaded
execute as @e[tag=chosenTrack] run scoreboard players operation @s worldmapID = @s rNumber
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math 1000
execute as @e[tag=!customtrack,tag=chosenTrack] run scoreboard players operation @s worldmapID += @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] math
tag @e[tag=chosenTrack,type=armor_stand,tag=customtrack] add wmCustomFocus
execute as @e[tag=chosenTrack] run function sprint_racer:game_logic/6/worldmap_inspect
tag @e[tag=chosenTrack,type=armor_stand,tag=customtrack] remove wmCustomFocus
scoreboard players reset @e[tag=chosenTrack] worldmapID

function sprint_racer_language:_dlc_1/gameplay/medals_tr_sidebar