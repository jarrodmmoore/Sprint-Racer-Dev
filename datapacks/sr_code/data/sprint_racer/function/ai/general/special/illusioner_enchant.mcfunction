scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..3}] rNumber

execute if entity @s[scores={math=1,aiHasNormal=1..}] run function sprint_racer:items/ai_enchant/__index

#random intervals
scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=10..50}] rNumber
scoreboard players set @s math2 20
scoreboard players operation @s math *= @s math2
scoreboard players operation @s aiSpecial -= @s math