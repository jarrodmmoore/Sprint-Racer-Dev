tag @e[tag=activeplayer,distance=..4,scores={invisibility=..0}] add checkmyid

scoreboard players operation @e[tag=checkmyid,distance=..4] dummyID = @s playerID
execute as @e[tag=checkmyid,distance=..4] run scoreboard players operation @s dummyID -= @s playerID

#dummyID is not zero? hit them
tag @e[tag=checkmyid,distance=..4,scores={dummyID=1..}] add zapped
tag @e[tag=checkmyid,distance=..4,scores={dummyID=..-1}] add zapped

execute as @e[tag=zapped,distance=..4] unless entity @s[scores={electrocute=0..6}] run scoreboard players set @s electrocute 2
scoreboard players operation @e[tag=zapped,distance=..4] attackerID = @s playerID
scoreboard players set @e[tag=zapped,distance=..4] attackTime 100
tag @e[tag=zapped,distance=..4] remove zapped

tag @e[tag=checkmyid,distance=..4] remove checkmyid