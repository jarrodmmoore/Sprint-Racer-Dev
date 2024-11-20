execute at @s run tp @s ~ ~0.66 ~
scoreboard players set @s lifespan 20
execute if score #halftick value matches 1 run scoreboard players set @s lifespan 10
tag @s remove setscore