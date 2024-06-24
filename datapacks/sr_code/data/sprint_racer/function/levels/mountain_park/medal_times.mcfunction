#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 1400
scoreboard players set @e[tag=w,type=armor_stand] silverTR 1346
scoreboard players set @e[tag=w,type=armor_stand] goldTR 1291
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 1259



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,type=armor_stand,scores={rNumber=42}] trackBestTime
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,type=armor_stand,scores={rNumber=42}] trackBestTime2

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,type=armor_stand,scores={rNumber=42}] medalRace
#note: first score is always "medalRace", second varies per gamemode