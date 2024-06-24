tag @s add gotEm

scoreboard players remove @e[tag=stealTarget2] aiHasItem4 1
scoreboard players remove @e[tag=stealTarget2] aiHasMelee 1
scoreboard players remove @e[tag=stealTarget2,scores={aiHasNormal=1..}] aiHasNormal 1
scoreboard players add @s giveQty 1

scoreboard players set @e[tag=stealTarget2] itemStolen 4
scoreboard players set @s giveItem 4