#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bronzeTR 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] silverTR 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] goldTR 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] diamondTR 0

#special function to load a custom track's stored medal times
function sprint_racer:game_logic/10/medal_time/load


#make sure you've set your rNumber values properly here!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bestTR = @e[limit=1,tag=customtrack,tag=wmCustomFocus] trackBestTime
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bestTR = @e[limit=1,tag=customtrack,tag=wmCustomFocus] trackBestTimeB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] trackBestTime2 = @e[limit=1,tag=customtrack,tag=wmCustomFocus] trackBestTime2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] trackBestTime2 = @e[limit=1,tag=customtrack,tag=wmCustomFocus] trackBestTime2B

execute if entity @s[tag=customrace] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalRace = @s medalRace
execute if entity @s[tag=custombattle] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalRace = @s medalBattle
#note: first score is always "medalRace", second varies per gamemode