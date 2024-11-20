execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run data merge entity @s {Radius:3.0f,RadiusPerTick:0.0f}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run data merge entity @s {Radius:5.0f,RadiusPerTick:0.0f}
tag @s add trap
tag @s add nasty
tag @s add lingering_trap