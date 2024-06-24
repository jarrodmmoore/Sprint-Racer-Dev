scoreboard objectives remove pathSource
scoreboard objectives add pathSource dummy

scoreboard players set @e[type=marker,tag=aibc_nearby,limit=1,sort=nearest] pathSource 1
scoreboard players set global pathSource 1

scoreboard players set @s inputCooldown 6
playsound minecraft:item.axe.strip master @s ~ ~ ~ 2 0.7