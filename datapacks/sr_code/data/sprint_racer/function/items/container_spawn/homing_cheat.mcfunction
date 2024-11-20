scoreboard players operation global math2 = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..3}] rNumber
execute if score global math2 matches 3 run tag @e[tag=cSETME] add homer
execute if score global math2 matches 3 run scoreboard players set @s[tag=node] itemBlockState 1000