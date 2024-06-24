scoreboard players operation @e[tag=w,type=armor_stand] math = @e[limit=1,sort=random,tag=random,scores={rNumber=1..5}] rNumber

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160..}] run function sprint_racer:cheats/ai_has_items_wow

scoreboard players set @e[tag=ai] aiHasItem1 3
scoreboard players set @e[tag=ai] aiHasItem2 3
scoreboard players set @e[tag=ai] aiHasItem3 3
scoreboard players set @e[tag=ai] aiHasItem4 1
scoreboard players set @e[tag=ai] aiHasItem5 3
scoreboard players set @e[tag=ai] aiHasItem6 1
scoreboard players set @e[tag=ai] aiHasItem7 1

scoreboard players set @e[tag=ai] aiHasItem8 0
execute if entity @e[tag=w,type=armor_stand,scores={math=5}] run scoreboard players set @e[tag=ai] aiHasItem8 3

scoreboard players set @e[tag=ai] aiHasItem9 0
execute if entity @e[tag=w,type=armor_stand,scores={math=4}] run scoreboard players set @e[tag=ai] aiHasItem9 3

scoreboard players set @e[tag=ai] aiHasItem10 3

scoreboard players set @e[tag=ai] aiHasItem11 0
execute if entity @e[tag=w,type=armor_stand,scores={math=1}] run scoreboard players set @e[tag=ai] aiHasItem11 3

scoreboard players set @e[tag=ai] aiHasItem12 0
execute if entity @e[tag=w,type=armor_stand,scores={math=2}] run scoreboard players set @e[tag=ai] aiHasItem12 3

scoreboard players set @e[tag=ai] aiHasItem13 1
scoreboard players set @e[tag=ai] aiHasItem14 1
scoreboard players set @e[tag=ai] aiHasItem15 1

scoreboard players set @e[tag=ai] aiHasItem16 0
execute if entity @e[tag=w,type=armor_stand,scores={math=3}] run scoreboard players set @e[tag=ai] aiHasItem16 3

scoreboard players set @e[tag=ai] aiHasItem17 1
scoreboard players set @e[tag=ai] aiHasItem18 1
scoreboard players set @e[tag=ai] aiHasItem19 1
scoreboard players set @e[tag=ai] aiHasItem20 1

#count number of traps active
scoreboard players set g_cheat math 0
execute as @e[tag=trap,limit=50] run scoreboard players add g_cheat math 1
execute if score g_cheat math matches 50.. run kill @e[tag=trap,sort=random,limit=25]