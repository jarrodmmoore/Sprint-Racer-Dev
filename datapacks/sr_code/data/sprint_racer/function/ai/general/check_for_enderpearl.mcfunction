scoreboard players remove @s aiPearlTime 1
scoreboard players reset @s[scores={aiPearlTime=..0}] aiPearlTime

execute as @e[tag=P_rememberAI] run scoreboard players operation @s dummyID = @s playerID
scoreboard players operation @e[tag=P_rememberAI] dummyID -= @s playerID

execute unless entity @e[tag=P_rememberAI,scores={dummyID=0}] run function sprint_racer:ai/general/warp_to_old_enderpearl_pos