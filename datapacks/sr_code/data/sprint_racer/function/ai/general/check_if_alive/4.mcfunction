execute unless entity @e[tag=ai4,scores={validAI4=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI4
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI4 dummy