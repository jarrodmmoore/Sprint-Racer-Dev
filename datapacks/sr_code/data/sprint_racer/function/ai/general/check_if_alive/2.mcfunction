execute unless entity @e[tag=ai2,scores={validAI2=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI2
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI2 dummy