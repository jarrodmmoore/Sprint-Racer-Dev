execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={playerID=2..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerID 2

scoreboard players operation @s playerID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] playerID
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] playerID 1