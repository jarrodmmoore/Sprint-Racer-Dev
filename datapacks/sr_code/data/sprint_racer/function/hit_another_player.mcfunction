tag @s add self12345
execute at @s positioned ^ ^ ^1.5 run tag @e[distance=..8,limit=1,sort=nearest,tag=activeplayer,tag=!self12345] add hitTarget
scoreboard players operation @e[tag=hitTarget,limit=1,sort=nearest] attackerID = @s playerID
scoreboard players set @e[tag=hitTarget,limit=1,sort=nearest] attackTime 100
tag @s remove self12345

tag @e[tag=hitTarget,sort=nearest] remove hitTarget
scoreboard players reset @s hitPlayer