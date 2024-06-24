scoreboard players set @s tactics_seed 0
scoreboard players operation @s tactics_seed = @e[limit=1,sort=random,tag=random,tag=!specialOddBan,scores={rNumber=1..50}] rNumber