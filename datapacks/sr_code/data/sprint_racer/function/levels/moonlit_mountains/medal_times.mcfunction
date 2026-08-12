#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] bronzeTR 1506
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] silverTR 1428
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] goldTR 1350
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] diamondTR 1272



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] bestTR = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=54}] trackBestTime
scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] trackBestTime2 = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=54}] trackBestTime2

scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalRace = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=54}] medalRace
#note: first score is always "medalRace", second varies per gamemode