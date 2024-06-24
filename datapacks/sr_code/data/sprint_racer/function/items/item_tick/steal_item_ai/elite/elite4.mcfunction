tag @s add gotEm

scoreboard players remove @e[tag=stealTarget1] aiHasItem24 1
scoreboard players remove @e[tag=stealTarget1] aiHasMelee 1
scoreboard players remove @e[tag=stealTarget1,scores={aiHasElite=1..}] aiHasElite 1
scoreboard players add @s giveQty 1

scoreboard players set @e[tag=stealTarget1] itemStolen 104
scoreboard players set @s giveItem 104