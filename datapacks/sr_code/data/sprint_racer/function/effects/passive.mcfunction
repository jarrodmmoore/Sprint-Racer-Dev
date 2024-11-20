#smart fire damage
execute as @a[scores={attackerID=..0}] at @s unless block ~ ~ ~ minecraft:lava run effect give @s minecraft:fire_resistance infinite 5 true
execute as @a at @s if block ~ ~ ~ minecraft:lava run effect clear @s minecraft:fire_resistance
execute as @a at @s if block ~ ~-1 ~ minecraft:magma_block run effect clear @s minecraft:fire_resistance
execute as @a at @s if block ~ ~ ~ minecraft:fire run effect clear @s minecraft:fire_resistance
effect clear @a[scores={attackerID=1..}] minecraft:fire_resistance

#keep everyone fed
effect give @a minecraft:saturation infinite 0 true

#prevent PVP
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!allowPVP] as @a[gamemode=adventure] unless items entity @s weapon.mainhand *[custom_data~{stronk:1b}] run effect give @s minecraft:weakness 3 5 true
execute as @e[tag=ai] run function sprint_racer:effects/ai_weakness