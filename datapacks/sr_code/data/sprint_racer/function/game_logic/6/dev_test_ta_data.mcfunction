execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] run scoreboard players operation @s trackBestTime = @e[limit=1,sort=random,scores={rNumber=1..50}] rNumber
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] run scoreboard players operation @s trackBestTimeB = @e[limit=1,sort=random,scores={rNumber=1..50}] rNumber
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] run scoreboard players operation @s medalRace = @e[limit=1,sort=random,scores={rNumber=1..4}] rNumber
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] run scoreboard players operation @s medalBattle = @e[limit=1,sort=random,scores={rNumber=1..4}] rNumber

tellraw @s ["",{"text":"[DEV] Loaded randomized Time Attack scores for all track slots.","color":"green"}]