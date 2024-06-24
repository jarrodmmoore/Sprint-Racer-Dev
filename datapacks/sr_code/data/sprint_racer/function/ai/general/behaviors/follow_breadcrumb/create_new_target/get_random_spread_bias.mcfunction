#pick a random direction
scoreboard players set @s aiSpreadBias 1
scoreboard players operation @s aiSpreadBias = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..8}] rNumber

#bias resets in a random amount of time
scoreboard players set @s aiBiasTime 1
scoreboard players operation @s aiBiasTime = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=10..40}] rNumber
scoreboard players set #10 value 5
scoreboard players operation @s aiBiasTime *= #10 value