execute unless entity @e[tag=ai8,scores={validAI8=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI8
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI8 dummy