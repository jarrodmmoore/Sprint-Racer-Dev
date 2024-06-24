execute unless entity @e[tag=ai7,scores={validAI7=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI7
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI7 dummy