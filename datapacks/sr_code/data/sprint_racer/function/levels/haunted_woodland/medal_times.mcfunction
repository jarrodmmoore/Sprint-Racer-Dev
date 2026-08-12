#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] bronzeTR 907
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] silverTR 853
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] goldTR 794
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] diamondTR 715



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] bestTR = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=22}] trackBestTime
scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] trackBestTime2 = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=22}] trackBestTime2

scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalRace = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=22}] medalRace
#note: first score is always "medalRace", second varies per gamemode