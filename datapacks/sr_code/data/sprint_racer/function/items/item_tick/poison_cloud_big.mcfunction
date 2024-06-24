execute unless entity @e[tag=w,type=armor_stand,scores={gameState=3}] run data merge entity @s {Radius:3.0f,RadiusPerTick:0.004f,ReapplicationDelay:40,Duration:700}
execute if entity @e[tag=w,type=armor_stand,scores={gameState=3}] run data merge entity @s {Radius:5.0f,RadiusPerTick:0.008f,ReapplicationDelay:40,Duration:700}
tag @s add trap
tag @s add bignasty
tag @s add lingering_trap