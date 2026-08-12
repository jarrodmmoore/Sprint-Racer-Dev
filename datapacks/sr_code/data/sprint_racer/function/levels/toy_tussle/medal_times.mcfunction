#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] bronzeTR 500
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] silverTR 400
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] goldTR 300
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] diamondTR 235

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] targetData 16




#make sure you've set your rNumber values properly here!

scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] bestTR = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] trackBestTimeB
scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] trackBestTime2 = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] trackBestTime2B

scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalRace = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] medalBattle
#note: first score is always "medalRace", second varies per gamemode