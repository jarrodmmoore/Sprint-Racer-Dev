#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 1730
scoreboard players set @e[tag=w,type=armor_stand] silverTR 1327
scoreboard players set @e[tag=w,type=armor_stand] goldTR 908
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 600

scoreboard players set @e[tag=w,type=armor_stand] targetData 15




#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,scores={rNumber=8}] trackBestTimeB
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,scores={rNumber=8}] trackBestTime2B

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,scores={rNumber=8}] medalBattle
#note: first score is always "medalRace", second varies per gamemode