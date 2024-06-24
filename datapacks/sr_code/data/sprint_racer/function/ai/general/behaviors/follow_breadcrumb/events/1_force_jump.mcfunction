execute if entity @s[scores={AIBC_condition=..0}] run tag @e[tag=currentMaster,limit=1] add aijump
execute if entity @s[scores={AIBC_condition=1..}] run scoreboard players operation @e[tag=currentMaster,limit=1] aiJBDelay = @s AIBC_condition

execute if entity @s[tag=warpjump] run scoreboard players set @s aiStuckTime 40
execute if entity @s[tag=warpjump] run scoreboard players remove @s teleportCount 1