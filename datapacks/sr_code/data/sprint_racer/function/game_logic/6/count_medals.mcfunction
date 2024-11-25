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