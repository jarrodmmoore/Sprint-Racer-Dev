scoreboard players add #varyTeleport value 1
execute if score #varyTeleport value matches 50.. run scoreboard players set #varyTeleport value 1

#nobody else online? always tp to center
tag @s add i_am_myself
execute unless entity @a[tag=!i_am_myself] run scoreboard players set #varyTeleport value 1
tag @s remove i_am_myself

execute if score #varyTeleport value matches 1 positioned ~ ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 2 positioned ~ ~ ~1.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 3 positioned ~ ~ ~-1.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 4 positioned ~ ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 5 positioned ~ ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 6 positioned ~ ~ ~.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 7 positioned ~ ~ ~-.5 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 8 positioned ~1.5 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 9 positioned ~1.5 ~ ~.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 10 positioned ~1.5 ~ ~-.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 11 positioned ~1.5 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 12 positioned ~1.5 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 13 positioned ~1.5 ~ ~1.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 14 positioned ~1.5 ~ ~-1.5 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 15 positioned ~-1.5 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 16 positioned ~-1.5 ~ ~.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 17 positioned ~-1.5 ~ ~-.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 18 positioned ~-1.5 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 19 positioned ~-1.5 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 20 positioned ~-1.5 ~ ~1.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 21 positioned ~-1.5 ~ ~-1.5 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 22 positioned ~1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 23 positioned ~1 ~ ~.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 24 positioned ~1 ~ ~-.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 25 positioned ~1 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 26 positioned ~1 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 27 positioned ~1 ~ ~1.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 28 positioned ~1 ~ ~-1.5 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 29 positioned ~-1 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 30 positioned ~-1 ~ ~.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 31 positioned ~-1 ~ ~-.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 32 positioned ~-1 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 33 positioned ~-1 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 34 positioned ~-1 ~ ~1.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 35 positioned ~-1 ~ ~-1.5 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 36 positioned ~.5 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 37 positioned ~.5 ~ ~.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 38 positioned ~.5 ~ ~-.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 39 positioned ~.5 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 40 positioned ~.5 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 41 positioned ~.5 ~ ~1.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 42 positioned ~.5 ~ ~-1.5 run tp @s ~ ~ ~ ~ ~

execute if score #varyTeleport value matches 43 positioned ~-.5 ~ ~ run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 44 positioned ~-.5 ~ ~.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 45 positioned ~-.5 ~ ~-.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 46 positioned ~-.5 ~ ~1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 47 positioned ~-.5 ~ ~-1 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 48 positioned ~-.5 ~ ~1.5 run tp @s ~ ~ ~ ~ ~
execute if score #varyTeleport value matches 49 positioned ~-.5 ~ ~-1.5 run tp @s ~ ~ ~ ~ ~