scoreboard players add #varyTeleport value 1
execute if score #varyTeleport value matches 50.. run scoreboard players set #varyTeleport value 1

#nobody else online? always tp to center
tag @s add i_am_myself
execute unless entity @a[tag=!i_am_myself] run scoreboard players set #varyTeleport value 1
tag @s remove i_am_myself

execute if score #varyTeleport value matches 1 positioned ~ ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 2 positioned ~ ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 3 positioned ~ ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 4 positioned ~ ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 5 positioned ~ ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 6 positioned ~ ~ ~3 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 7 positioned ~ ~ ~-3 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 8 positioned ~3 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 9 positioned ~3 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 10 positioned ~3 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 11 positioned ~3 ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 12 positioned ~3 ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 13 positioned ~3 ~ ~3 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 14 positioned ~3 ~ ~-3 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 15 positioned ~-3 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 16 positioned ~-3 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 17 positioned ~-3 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 18 positioned ~-3 ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 19 positioned ~-3 ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 20 positioned ~-3 ~ ~3 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 21 positioned ~-3 ~ ~-3 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 22 positioned ~2 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 23 positioned ~2 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 24 positioned ~2 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 25 positioned ~2 ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 26 positioned ~2 ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 27 positioned ~2 ~ ~3 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 28 positioned ~2 ~ ~-3 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 29 positioned ~-2 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 30 positioned ~-2 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 31 positioned ~-2 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 32 positioned ~-2 ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 33 positioned ~-2 ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 34 positioned ~-2 ~ ~3 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 35 positioned ~-2 ~ ~-3 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 36 positioned ~1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 37 positioned ~1 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 38 positioned ~1 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 39 positioned ~1 ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 40 positioned ~1 ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 41 positioned ~1 ~ ~3 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 42 positioned ~1 ~ ~-3 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 43 positioned ~-1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 44 positioned ~-1 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 45 positioned ~-1 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 46 positioned ~-1 ~ ~2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 47 positioned ~-1 ~ ~-2 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 48 positioned ~-1 ~ ~3 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 49 positioned ~-1 ~ ~-3 run tp @s ~ ~ ~ ~ ~