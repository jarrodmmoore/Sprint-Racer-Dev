#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 1095
scoreboard players set @e[tag=w,type=armor_stand] silverTR 1017
scoreboard players set @e[tag=w,type=armor_stand] goldTR 977
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 935



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,scores={rNumber=27}] trackBestTime
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,scores={rNumber=27}] trackBestTime2

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,scores={rNumber=27}] medalRace
#note: first score is always "medalRace", second varies per gamemode