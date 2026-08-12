scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] carCooldown 1
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3,carCooldown=..0,gameTime=..99999}] run function sprint_racer:levels/metro_plaza/spawn_car

execute as @e[type=armor_stand,tag=carMoveA] at @s run function sprint_racer:levels/metro_plaza/car_a
execute as @e[type=armor_stand,tag=carMoveB] at @s run function sprint_racer:levels/metro_plaza/car_b