tag @e[tag=set_ai_no] add ai9
scoreboard players set @e[tag=set_ai_no] validAI9 1
execute as @e[tag=set_ai_no] run function sprint_racer:ai/general/clear_old_ai_targets

execute unless entity @e[tag=w,scores={gameState=3}] as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua/9
execute if entity @e[tag=w,scores={gameState=3}] as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/red/9
execute if entity @s[tag=playerOrange] as @e[tag=set_ai_no] run function sprint_racer_language:_dlc_2/gameplay/ai_nametag/orange/9
execute if entity @s[tag=playerCyan] as @e[tag=set_ai_no] run function sprint_racer_language:_dlc_2/gameplay/ai_nametag/cyan/9