execute unless entity @e[tag=ai9,scores={validAI9=1..}] run tag @s add needRespawn

execute if entity @s[tag=needRespawn] run scoreboard objectives remove validAI9
execute if entity @s[tag=needRespawn] run scoreboard objectives add validAI9 dummy