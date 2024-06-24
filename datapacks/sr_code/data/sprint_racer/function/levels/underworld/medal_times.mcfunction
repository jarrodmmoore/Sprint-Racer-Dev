#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 808
scoreboard players set @e[tag=w,type=armor_stand] silverTR 674
scoreboard players set @e[tag=w,type=armor_stand] goldTR 457
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 323

scoreboard players set @e[tag=w,type=armor_stand] targetData 17




#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,scores={rNumber=50}] trackBestTimeB
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,scores={rNumber=50}] trackBestTime2B

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,scores={rNumber=50}] medalBattle
#note: first score is always "medalRace", second varies per gamemode