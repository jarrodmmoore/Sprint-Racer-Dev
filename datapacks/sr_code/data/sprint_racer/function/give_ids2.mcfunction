execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={playerID=2..}] run scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] playerID 2

scoreboard players operation @s playerID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] playerID
scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] playerID 1