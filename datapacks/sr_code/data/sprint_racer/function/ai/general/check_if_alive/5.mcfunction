execute unless entity @e[tag=ai5,scores={validAI5=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI5
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI5 dummy