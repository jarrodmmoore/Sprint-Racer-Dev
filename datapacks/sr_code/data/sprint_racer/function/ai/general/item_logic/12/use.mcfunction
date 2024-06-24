#use elytra

scoreboard players set @s elytraTimer 1

scoreboard players set @s aiActICooldown 10
scoreboard players set @s inputCooldown 60
scoreboard players remove @s aiHasItem12 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem12=1..}] aiHoldingItem 12
scoreboard players set @s[scores={aiHasItem12=1..}] aiActICooldown 10

#clear old tagged targets if they're around
execute if entity @s[tag=ai1] run tag @e[tag=aiElyTarget1,type=marker] remove aiElyTarget1
execute if entity @s[tag=ai2] run tag @e[tag=aiElyTarget2,type=marker] remove aiElyTarget2
execute if entity @s[tag=ai3] run tag @e[tag=aiElyTarget3,type=marker] remove aiElyTarget3
execute if entity @s[tag=ai4] run tag @e[tag=aiElyTarget4,type=marker] remove aiElyTarget4
execute if entity @s[tag=ai5] run tag @e[tag=aiElyTarget5,type=marker] remove aiElyTarget5
execute if entity @s[tag=ai6] run tag @e[tag=aiElyTarget6,type=marker] remove aiElyTarget6
execute if entity @s[tag=ai7] run tag @e[tag=aiElyTarget7,type=marker] remove aiElyTarget7
execute if entity @s[tag=ai8] run tag @e[tag=aiElyTarget8,type=marker] remove aiElyTarget8
execute if entity @s[tag=ai9] run tag @e[tag=aiElyTarget9,type=marker] remove aiElyTarget9

scoreboard players set @s[scores={aiHasItem12=..0}] aiHoldingItem 0