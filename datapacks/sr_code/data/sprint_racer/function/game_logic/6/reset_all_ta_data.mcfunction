scoreboard players reset @e[tag=customtrack] trackBestTime
scoreboard players reset @e[tag=customtrack] trackBestTimeB
scoreboard players reset @e[tag=customtrack] medalRace
scoreboard players reset @e[tag=customtrack] medalBattle

scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..}] trackBestTime 0
scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..}] trackBestTimeB 0
scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..}] trackBestTime2 0
scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..}] trackBestTime2B 0
scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..}] medalRace 0
scoreboard players set @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..}] medalBattle 0

function sprint_racer_language:_dlc_1/reset_ta_data