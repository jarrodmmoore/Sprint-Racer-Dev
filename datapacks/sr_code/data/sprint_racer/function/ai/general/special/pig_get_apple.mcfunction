scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..3}] rNumber

tag @s add justOne

execute if entity @s[scores={math=1,aiHasItem5=..0}] run function sprint_racer_language:gameplay/give_item/no5

tag @s remove justOne

#random intervals
scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] rNumber
scoreboard players set @s math2 20
scoreboard players operation @s math *= @s math2
scoreboard players operation @s aiSpecial -= @s math