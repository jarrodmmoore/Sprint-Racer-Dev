function sprint_racer:levels/praia_de_abril_2/map

#listen for players reaching a new lap
scoreboard players set #pdaExecuted value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=200..}] as @e[tag=activeplayer] if score @s lapFake > #pdaLap value run function sprint_racer:levels/praia_de_abril_2/open_next_route

#manage routes based on lap
execute if score #pdaLapCycle value matches 1 run function sprint_racer:levels/praia_de_abril_2/manage_route_1
execute if score #pdaLapCycle value matches 2 run function sprint_racer:levels/praia_de_abril_2/manage_route_2
execute if score #pdaLapCycle value matches 3 run function sprint_racer:levels/praia_de_abril_2/manage_route_3

#manage switch stuff
scoreboard players set #pdaSwitch value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=switchON] run scoreboard players set #pdaSwitch value 1
execute if score #pdaSwitch value matches 0 run function sprint_racer:levels/praia_de_abril_2/manage_switch_off
execute if score #pdaSwitch value matches 1 run function sprint_racer:levels/praia_de_abril_2/manage_switch_on