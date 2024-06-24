#shoutout to devin townsend
tag @s add i_am_i

#don't hit your teammates kthx
execute if entity @s[tag=playerOrange] run tag @e[distance=..5,tag=activeplayer,tag=playerOrange] add donttouchme
execute if entity @s[tag=playerCyan] run tag @e[distance=..5,tag=activeplayer,tag=playerCyan] add donttouchme

scoreboard players remove @s[scores={aiHitCooldown=1..}] aiHitCooldown 1
scoreboard players remove @s[scores={aiHitCooldown=1..}] aiHitCooldown 1

#hard ai has a bigger hit range
execute if entity @s[tag=very_easy_ai,scores={aiSkill=..2,aiHitCooldown=..0}] if entity @e[tag=!i_am_i,tag=!donttouchme,tag=activeplayer,distance=..1] run function sprint_racer:ai/general/direct_attack/hit_type_index
execute if entity @s[tag=!very_easy_ai,scores={aiSkill=..2,aiHitCooldown=..0}] if entity @e[tag=!i_am_i,tag=!donttouchme,tag=activeplayer,distance=..2] run function sprint_racer:ai/general/direct_attack/hit_type_index
execute if entity @s[scores={aiSkill=3..,aiHitCooldown=..0}] if entity @e[tag=!i_am_i,tag=!donttouchme,tag=activeplayer,distance=..3] run function sprint_racer:ai/general/direct_attack/hit_type_index

tag @e[distance=..6,tag=donttouchme] remove donttouchme
tag @s remove i_am_i