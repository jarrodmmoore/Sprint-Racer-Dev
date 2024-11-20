function sprint_racer:levels/praia_de_abril/map

#show players how to navigate the city
execute if score global gameState matches 1 run scoreboard players set @a[scores={check=3..4}] showCheckNav 4

#make sure shortcut is closed at the start (must wait until all needed chunks are loaded)
execute if score #praiadeabril value matches 0 if block -1373 74 -1488 air if block -1373 74 -1489 air if block -1373 74 -1488 air if block -1483 80 -1478 air if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!switchON] run function sprint_racer:levels/praia_de_abril/close_shortcut