function sprint_racer:game_logic/6/count_medals

#debug
#scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalDiamond 74

fill 1505 131 405 1505 136 413 air
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={medalBronze=74..}] run clone 1559 69 428 1559 74 436 1505 131 405
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={medalSilver=74..}] run clone 1558 69 428 1558 74 436 1505 131 405
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={medalGold=74..}] run clone 1557 69 428 1557 74 436 1505 131 405
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={medalDiamond=74..}] run clone 1556 69 428 1556 74 436 1505 131 405
#netherite?
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={medalDiamond=74..}] as @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=!00] run function sprint_racer:game_logic/0/props/time_attack_netherite_crown