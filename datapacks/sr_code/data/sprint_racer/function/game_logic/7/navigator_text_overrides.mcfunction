tag @s[scores={actionbarState=2}] add forceToNav
tag @s[scores={actionbarState=3}] add forceToNav
tag @s[scores={actionbarState=5}] add forceToNav
tag @s[scores={actionbarState=7}] add forceToNav

scoreboard players set @s[tag=forceToNav] actionbarState 1
scoreboard players set @s[tag=forceToNav] actionbarState2 0

tag @s remove forceToNav