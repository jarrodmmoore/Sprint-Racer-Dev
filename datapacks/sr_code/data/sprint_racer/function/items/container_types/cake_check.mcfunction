execute if entity @s[tag=!ai,scores={hp=..19}] run function sprint_racer:items/container_types/cake
execute if entity @s[tag=ai] run function sprint_racer:items/container_types/cake

scoreboard players set @s itemBlockState 0