scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalTotal 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalBronze 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalSilver 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalGold 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalDiamond 0
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=1..}] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalBronze 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=2..}] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalSilver 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=3..}] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalGold 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=4..}] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalDiamond 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalRace=1..}] run scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalTotal += @s medalRace
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=1..}] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalBronze 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=2..}] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalSilver 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=3..}] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalGold 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=4..}] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalDiamond 1
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={medalBattle=1..}] run scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] medalTotal += @s medalBattle