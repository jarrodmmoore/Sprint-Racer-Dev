scoreboard players remove #carCooldown value 1
execute if score #carCooldown value matches ..0 if entity @e[tag=w,type=armor_stand,scores={gameTime=..99999}] run function sprint_racer:levels/retro_synthwave/spawn_car

execute as @e[type=armor_stand,tag=retroSynthCar] at @s run function sprint_racer:levels/retro_synthwave/car_drive