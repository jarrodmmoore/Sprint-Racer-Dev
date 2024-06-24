scoreboard players remove @s lifespan 1

execute if score #halftick value matches 0 run kill @s[scores={lifespan=..0}]
execute if score #halftick value matches 1 run kill @s[scores={lifespan=..-1}]

scoreboard players reset @s[scores={lifespan=..-1}] lifespan