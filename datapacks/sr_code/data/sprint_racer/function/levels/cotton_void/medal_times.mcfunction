#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 40404040
scoreboard players set @e[tag=w,type=armor_stand] silverTR 4800
scoreboard players set @e[tag=w,type=armor_stand] goldTR 3000
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 1998



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,scores={rNumber=50}] trackBestTime
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,scores={rNumber=50}] trackBestTime2

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,scores={rNumber=50}] medalRace
#note: first score is always "medalRace", second varies per gamemode