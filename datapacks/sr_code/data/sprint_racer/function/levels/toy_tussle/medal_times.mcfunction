#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bronzeTR 500
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] silverTR 400
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] goldTR 300
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] diamondTR 235

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] targetData 16




#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bestTR = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] trackBestTimeB
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] trackBestTime2B

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalRace = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] medalBattle
#note: first score is always "medalRace", second varies per gamemode