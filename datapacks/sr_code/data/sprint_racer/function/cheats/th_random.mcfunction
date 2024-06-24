scoreboard players operation global math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..2}] rNumber
execute if score global math matches 1 run tag @s add itemCyan

scoreboard players operation global math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

execute if score global math matches 1..15 rotated ~ ~-15 run function sprint_racer:cheats/th_snowball
execute if score global math matches 16..42 rotated ~ ~5 run function sprint_racer:cheats/th_missile
execute if score global math matches 43..50 rotated ~ ~-20 run function sprint_racer:cheats/th_tnt

tag @s remove itemCyan

scoreboard players operation global math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber
scoreboard players operation global touhou -= global math
scoreboard players remove global touhou 7