scoreboard players remove @s[scores={attackTime=1..,hitstun=..0}] attackTime 1
scoreboard players set @s[scores={attackTime=..0,attackerID=1..}] attackerID 0

#reset attacker ID if attacker is us
execute if score @s attackerID = @s playerID run scoreboard players set @s attackerID 0