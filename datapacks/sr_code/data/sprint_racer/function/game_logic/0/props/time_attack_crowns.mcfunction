scoreboard players set @e[tag=w,type=armor_stand] medalTotal 0
scoreboard players set @e[tag=w,type=armor_stand] medalBronze 0
scoreboard players set @e[tag=w,type=armor_stand] medalSilver 0
scoreboard players set @e[tag=w,type=armor_stand] medalGold 0
scoreboard players set @e[tag=w,type=armor_stand] medalDiamond 0
execute as @e[tag=random,scores={medalRace=1..}] run scoreboard players add @e[tag=w,type=armor_stand] medalBronze 1
execute as @e[tag=random,scores={medalRace=2..}] run scoreboard players add @e[tag=w,type=armor_stand] medalSilver 1
execute as @e[tag=random,scores={medalRace=3..}] run scoreboard players add @e[tag=w,type=armor_stand] medalGold 1
execute as @e[tag=random,scores={medalRace=4..}] run scoreboard players add @e[tag=w,type=armor_stand] medalDiamond 1
execute as @e[tag=random,scores={medalRace=1..}] run scoreboard players operation @e[tag=w,type=armor_stand] medalTotal += @s medalRace
execute as @e[tag=random,scores={medalBattle=1..}] run scoreboard players add @e[tag=w,type=armor_stand] medalBronze 1
execute as @e[tag=random,scores={medalBattle=2..}] run scoreboard players add @e[tag=w,type=armor_stand] medalSilver 1
execute as @e[tag=random,scores={medalBattle=3..}] run scoreboard players add @e[tag=w,type=armor_stand] medalGold 1
execute as @e[tag=random,scores={medalBattle=4..}] run scoreboard players add @e[tag=w,type=armor_stand] medalDiamond 1
execute as @e[tag=random,scores={medalBattle=1..}] run scoreboard players operation @e[tag=w,type=armor_stand] medalTotal += @s medalBattle

#debug
#scoreboard players set @e[tag=w,type=armor_stand] medalDiamond 68

fill 1505 131 405 1505 136 413 air
execute if entity @e[tag=w,type=armor_stand,scores={medalBronze=68..}] run clone 1559 69 428 1559 74 436 1505 131 405
execute if entity @e[tag=w,type=armor_stand,scores={medalSilver=68..}] run clone 1558 69 428 1558 74 436 1505 131 405
execute if entity @e[tag=w,type=armor_stand,scores={medalGold=68..}] run clone 1557 69 428 1557 74 436 1505 131 405
execute if entity @e[tag=w,type=armor_stand,scores={medalDiamond=68..}] run clone 1556 69 428 1556 74 436 1505 131 405
#netherite?
execute if entity @e[tag=w,type=armor_stand,scores={medalDiamond=68..}] as @e[tag=cheats,type=armor_stand,tag=!00] run function sprint_racer:game_logic/0/props/time_attack_netherite_crown