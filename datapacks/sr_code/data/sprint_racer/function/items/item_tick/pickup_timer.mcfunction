scoreboard players operation @s pickupTimer = @s itemCooldown
scoreboard players operation @s pickupTimer /= @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=20}] rNumber
scoreboard players add @s pickupTimer 1