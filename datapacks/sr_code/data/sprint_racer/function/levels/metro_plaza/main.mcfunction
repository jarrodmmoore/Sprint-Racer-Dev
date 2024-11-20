function sprint_racer:levels/metro_plaza/map

#moving cars, now custom models instead of cloned blocks (SOO MUCH BETTER LMAO)
execute if score global gameState matches 1..3 run function sprint_racer:levels/metro_plaza/cars_main
execute if score global gameState matches 1..3 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=halftick] run function sprint_racer:levels/metro_plaza/cars_main

#alarm when players reach the 2nd floor of the bank
execute if entity @a[x=3,y=93,z=2033,dx=13,dy=5,dz=13,gamemode=!spectator] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={oTimerGlobal=0}] positioned 9 95 2042 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 2 1.15

#warps
execute as @e[tag=activeplayer,x=-23,y=85,z=1996,dx=4,dy=6,dz=10] at @s run tp @s ~84 ~ ~
execute as @e[tag=activeplayer,x=-23,y=85,z=2056,dx=4,dy=6,dz=10] at @s run tp @s ~84 ~ ~

execute as @e[tag=activeplayer,x=79,y=85,z=1996,dx=4,dy=6,dz=10] at @s run tp @s ~-84 ~ ~
execute as @e[tag=activeplayer,x=79,y=85,z=2056,dx=4,dy=6,dz=10] at @s run tp @s ~-84 ~ ~