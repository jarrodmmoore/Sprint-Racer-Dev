tag @e[tag=activeplayer,distance=..4,scores={invisibility=..0}] add checkmyid

#scoreboard players operation @e[tag=checkmyid] dummyID = @s playerID
#execute as @e[tag=checkmyid] run scoreboard players operation @s dummyID -= @s playerID

#dummyID is not zero? hit them
tag @e[tag=checkmyid,tag=playerOrange] add zapped

execute as @e[tag=zapped] unless entity @s[scores={electrocute=0..6}] run scoreboard players set @s electrocute 2
scoreboard players operation @e[tag=zapped] attackerID = @s playerID
scoreboard players set @e[tag=zapped] attackTime 100
tag @e[tag=zapped] remove zapped

tag @e[tag=checkmyid] remove checkmyid