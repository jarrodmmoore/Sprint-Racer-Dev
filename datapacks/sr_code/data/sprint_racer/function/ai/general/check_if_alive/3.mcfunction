execute unless entity @e[tag=ai3,scores={validAI3=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI3
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI3 dummy