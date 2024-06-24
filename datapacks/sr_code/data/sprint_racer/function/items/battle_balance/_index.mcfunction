#using sub-indexes to run less commands each time around
execute if entity @s[scores={playerCountC=..5}] run function sprint_racer:items/battle_balance/_index_1_5
execute if entity @s[scores={playerCountC=6..10}] run function sprint_racer:items/battle_balance/_index_6_10
execute if entity @s[scores={playerCountC=11..15}] run function sprint_racer:items/battle_balance/_index_11_15
execute if entity @s[scores={playerCountC=16..20}] run function sprint_racer:items/battle_balance/_index_16_20
execute if entity @s[scores={playerCountC=21..}] run function sprint_racer:items/battle_balance/_index_21_25

#item balance logic depends on the current active player count


#rival ai gets slightly better items
execute as @e[limit=1,tag=ai_rival] run scoreboard players add @s[scores={itemLuck=..5}] itemLuck 1

#inverted balance cheat
execute if entity @e[tag=22a,tag=cheats,type=armor_stand] run function sprint_racer:items/invert_balance

#item luck stat
execute as @a[tag=activeplayer] run scoreboard players operation @s itemLuck += @s cStatLuck
scoreboard players set @a[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @a[scores={itemLuck=..0}] itemLuck 1