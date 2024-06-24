execute unless entity @e[tag=ai1,scores={validAI1=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI1
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI1 dummy