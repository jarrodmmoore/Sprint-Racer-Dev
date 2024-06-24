#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,type=armor_stand] bronzeTR 1518
scoreboard players set @e[tag=w,type=armor_stand] silverTR 1310
scoreboard players set @e[tag=w,type=armor_stand] goldTR 1151
scoreboard players set @e[tag=w,type=armor_stand] diamondTR 902

scoreboard players set @e[tag=w,type=armor_stand] targetData 33




#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,type=armor_stand] bestTR = @e[limit=1,tag=random,scores={rNumber=5}] trackBestTimeB
scoreboard players operation @e[tag=w,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,scores={rNumber=5}] trackBestTime2B

scoreboard players operation @e[tag=w,type=armor_stand] medalRace = @e[limit=1,tag=random,scores={rNumber=5}] medalBattle
#note: first score is always "medalRace", second varies per gamemode