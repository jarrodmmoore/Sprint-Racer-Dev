execute at @s run tp @s ~ ~1 ~
scoreboard players set @s lifespan 16
execute if score #halftick value matches 1 run scoreboard players set @s lifespan 8
tag @s remove setscore