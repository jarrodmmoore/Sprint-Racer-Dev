#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 2390
scoreboard players set @e[tag=w,type=armor_stand] silverTR 1995
scoreboard players set @e[tag=w,type=armor_stand] goldTR 1355
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 913

scoreboard players set @e[tag=w,type=armor_stand] targetData 26




#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,scores={rNumber=10}] trackBestTimeB
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,scores={rNumber=10}] trackBestTime2B

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,scores={rNumber=10}] medalBattle
#note: first score is always "medalRace", second varies per gamemode