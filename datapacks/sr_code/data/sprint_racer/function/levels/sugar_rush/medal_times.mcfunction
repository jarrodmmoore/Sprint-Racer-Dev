#these are measured in 10ths of a second (every other tick)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bronzeTR 699
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] silverTR 538
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] goldTR 444
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] diamondTR 371

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] targetData 16




#make sure you've set your rNumber values properly here!

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] bestTR = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=12}] trackBestTimeB
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] trackBestTime2 = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=12}] trackBestTime2B

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalRace = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=12}] medalBattle
#note: first score is always "medalRace", second varies per gamemode