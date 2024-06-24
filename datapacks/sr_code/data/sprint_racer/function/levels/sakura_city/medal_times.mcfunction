#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 1020
scoreboard players set @e[tag=w,type=armor_stand] silverTR 941
scoreboard players set @e[tag=w,type=armor_stand] goldTR 904
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 809



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,scores={rNumber=3}] trackBestTime
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,scores={rNumber=3}] trackBestTime2

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,scores={rNumber=3}] medalRace
#note: first score is always "medalRace", second varies per gamemode