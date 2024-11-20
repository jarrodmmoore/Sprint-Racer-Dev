scoreboard players operation @s taTimeMin = @s taLapMin
scoreboard players operation @s taTimeSec = @s taLapSec
scoreboard players operation @s taTimeMsec = @s taLapMsec

scoreboard players operation @s storedTimeMin = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMin
scoreboard players operation @s storedTimeSec = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeSec
scoreboard players operation @s storedTimeMsec = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] currentTimeMsec

#scoreboard players set @s[tag=!1_lap_only] actionbarState 2
#scoreboard players set @s[tag=!1_lap_only] actionbarState2 40

#flash split time on new HUD
scoreboard players set @s flashSplitTime 20

#starts the lap animation, happens in another function
scoreboard players set @s lapAnimation 1

#save coords
function sprint_racer:save_coordinates