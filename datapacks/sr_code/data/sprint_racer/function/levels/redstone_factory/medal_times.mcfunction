#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bronzeTR 1219
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] silverTR 1105
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] goldTR 1022
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] diamondTR 954



#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bestTR = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10}] trackBestTime
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10}] trackBestTime2

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalRace = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10}] medalRace
#note: first score is always "medalRace", second varies per gamemode