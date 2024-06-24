scoreboard players operation @s pickupTimer = @s itemCooldown
scoreboard players operation @s pickupTimer /= @e[limit=1,tag=random,scores={rNumber=20}] rNumber
scoreboard players add @s pickupTimer 1