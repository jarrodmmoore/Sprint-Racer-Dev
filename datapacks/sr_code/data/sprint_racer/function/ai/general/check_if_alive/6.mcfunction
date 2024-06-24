execute unless entity @e[tag=ai6,scores={validAI6=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI6
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI6 dummy