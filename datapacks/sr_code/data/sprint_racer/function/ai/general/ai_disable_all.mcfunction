#aiGetsPoints? make all AI finish immediately
execute if entity @s[tag=aiGetsPoints] run function sprint_racer:ai/general/ai_silent_finish_all

tag @e[tag=AImaster] add aiDisable
scoreboard objectives remove validAI1
scoreboard objectives remove validAI2
scoreboard objectives remove validAI3
scoreboard objectives remove validAI4
scoreboard objectives remove validAI5
scoreboard objectives remove validAI6
scoreboard objectives remove validAI7
scoreboard objectives remove validAI8
scoreboard objectives remove validAI9

#prevent memory leak due to entities lingering in the world
kill @e[type=minecraft:area_effect_cloud,tag=!node]
kill @e[type=marker,tag=!node]