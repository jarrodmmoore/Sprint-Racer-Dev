#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 2450
scoreboard players set @e[tag=w,type=armor_stand] silverTR 2360
scoreboard players set @e[tag=w,type=armor_stand] goldTR 2298
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 2208



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,type=armor_stand,scores={rNumber=48}] trackBestTime
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,type=armor_stand,scores={rNumber=48}] trackBestTime2

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,type=armor_stand,scores={rNumber=48}] medalRace
#note: first score is always "medalRace", second varies per gamemode