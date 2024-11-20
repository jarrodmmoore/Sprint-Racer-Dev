execute store result score #random value run random value 1..8
execute if score #random value matches 1 at @s run tp @s ~1 ~1 ~
execute if score #random value matches 2 at @s run tp @s ~.707 ~1 ~.707
execute if score #random value matches 3 at @s run tp @s ~ ~1 ~1
execute if score #random value matches 4 at @s run tp @s ~-1 ~1 ~
execute if score #random value matches 5 at @s run tp @s ~-.707 ~1 ~-.707
execute if score #random value matches 6 at @s run tp @s ~ ~1 ~-1
execute if score #random value matches 7 at @s run tp @s ~.707 ~1 ~-.707
execute if score #random value matches 8 at @s run tp @s ~-.707 ~1 ~.707

scoreboard players set @s lifespan 16
execute if score #halftick value matches 1 run scoreboard players set @s lifespan 8
tag @s remove setscore