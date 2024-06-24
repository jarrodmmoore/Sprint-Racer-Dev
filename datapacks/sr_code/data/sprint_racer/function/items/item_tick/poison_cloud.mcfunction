execute unless entity @e[tag=w,type=armor_stand,scores={gameState=3}] run data merge entity @s {Radius:3.0f,RadiusPerTick:0.0f}
execute if entity @e[tag=w,type=armor_stand,scores={gameState=3}] run data merge entity @s {Radius:5.0f,RadiusPerTick:0.0f}
tag @s add trap
tag @s add nasty
tag @s add lingering_trap