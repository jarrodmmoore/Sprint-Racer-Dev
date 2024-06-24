execute unless entity @e[tag=w,scores={playerID=2..}] run scoreboard players set @e[tag=w,type=armor_stand] playerID 2

scoreboard players operation @s playerID = @e[tag=w,limit=1] playerID
scoreboard players add @e[tag=w,type=armor_stand] playerID 1