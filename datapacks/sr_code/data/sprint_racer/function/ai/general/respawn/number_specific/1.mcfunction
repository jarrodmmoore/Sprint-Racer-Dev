tag @e[tag=set_ai_no] add ai1
scoreboard players set @e[tag=set_ai_no] validAI1 1
execute as @e[tag=set_ai_no] run function sprint_racer:ai/general/clear_old_ai_targets

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/aqua with storage sprint_racer:ai_storage_1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] as @e[tag=set_ai_no] run function sprint_racer_language:gameplay/ai_nametag/red with storage sprint_racer:ai_storage_1
execute if entity @s[tag=playerOrange] as @e[tag=set_ai_no] run function sprint_racer_language:_dlc_2/gameplay/ai_nametag/orange with storage sprint_racer:ai_storage_1
execute if entity @s[tag=playerCyan] as @e[tag=set_ai_no] run function sprint_racer_language:_dlc_2/gameplay/ai_nametag/cyan with storage sprint_racer:ai_storage_1