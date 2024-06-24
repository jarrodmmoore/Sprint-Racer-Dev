tag @e[limit=1,sort=nearest,tag=activeplayer] add itemParent
scoreboard players operation @s playerID = @e[limit=1,tag=itemParent] playerID
execute if entity @e[limit=1,tag=itemParent,tag=playerCyan] run tag @s add itemCyan
execute if entity @e[limit=1,tag=itemParent,tag=playerOrange] run tag @s add itemOrange
tag @e[limit=1,tag=itemParent,sort=nearest] remove itemParent