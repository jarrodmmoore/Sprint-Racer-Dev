#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 3600
scoreboard players set @e[tag=w,type=armor_stand] silverTR 3000
scoreboard players set @e[tag=w,type=armor_stand] goldTR 2400
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 2240



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,scores={rNumber=18}] trackBestTime
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,scores={rNumber=18}] trackBestTime2

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,scores={rNumber=18}] medalRace
#note: first score is always "medalRace", second varies per gamemode