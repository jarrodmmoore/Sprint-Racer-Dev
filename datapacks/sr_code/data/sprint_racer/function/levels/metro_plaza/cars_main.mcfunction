scoreboard players remove @e[tag=w,type=armor_stand,limit=1] carCooldown 1
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1..3,carCooldown=..0,gameTime=..99999}] run function sprint_racer:levels/metro_plaza/spawn_car

execute as @e[type=armor_stand,tag=carMoveA] at @s run function sprint_racer:levels/metro_plaza/car_a
execute as @e[type=armor_stand,tag=carMoveB] at @s run function sprint_racer:levels/metro_plaza/car_b