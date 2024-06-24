scoreboard players set @e[tag=activeplayer] math2 0
execute as @e[tag=activeplayer] run scoreboard players operation @s math2 = @s itemLuck

scoreboard players set @e[tag=activeplayer,scores={math2=1}] itemLuck 5
scoreboard players set @e[tag=activeplayer,scores={math2=2}] itemLuck 4
scoreboard players set @e[tag=activeplayer,scores={math2=3}] itemLuck 3
scoreboard players set @e[tag=activeplayer,scores={math2=4}] itemLuck 2
scoreboard players set @e[tag=activeplayer,scores={math2=5}] itemLuck 1