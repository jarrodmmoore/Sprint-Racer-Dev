scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalTotal 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalBronze 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalSilver 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalGold 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalDiamond 0
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=1..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalBronze 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=2..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalSilver 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=3..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalGold 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=4..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalDiamond 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=1..}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalTotal += @s medalRace
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=1..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalBronze 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=2..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalSilver 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=3..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalGold 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=4..}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalDiamond 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=1..}] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalTotal += @s medalBattle

#debug
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] medalDiamond 74

fill 1505 131 405 1505 136 413 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={medalBronze=74..}] run clone 1559 69 428 1559 74 436 1505 131 405
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={medalSilver=74..}] run clone 1558 69 428 1558 74 436 1505 131 405
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={medalGold=74..}] run clone 1557 69 428 1557 74 436 1505 131 405
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={medalDiamond=74..}] run clone 1556 69 428 1556 74 436 1505 131 405
#netherite?
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={medalDiamond=74..}] as @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=!00] run function sprint_racer:game_logic/0/props/time_attack_netherite_crown