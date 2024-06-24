scoreboard players reset @e[tag=customtrack] trackBestTime
scoreboard players reset @e[tag=customtrack] trackBestTimeB
scoreboard players reset @e[tag=customtrack] medalRace
scoreboard players reset @e[tag=customtrack] medalBattle

scoreboard players set @e[tag=random,scores={rNumber=1..50}] trackBestTime 0
scoreboard players set @e[tag=random,scores={rNumber=1..50}] trackBestTimeB 0
scoreboard players set @e[tag=random,scores={rNumber=1..50}] trackBestTime2 0
scoreboard players set @e[tag=random,scores={rNumber=1..50}] trackBestTime2B 0
scoreboard players set @e[tag=random,scores={rNumber=1..50}] medalRace 0
scoreboard players set @e[tag=random,scores={rNumber=1..50}] medalBattle 0

function sprint_racer_language:_dlc_1/reset_ta_data