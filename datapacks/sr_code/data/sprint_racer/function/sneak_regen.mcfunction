scoreboard players add @s regenTimer 1
scoreboard players set @s[scores={hitstun=1..}] regenTimer 0

execute if score @s regenTimer >= @s cStatHeal run function sprint_racer:sneak_regen_agogo

#cancel jump boost item
execute if score @s inputCooldown matches ..0 at @s unless entity @e[distance=..2,type=marker,limit=1,sort=nearest,tag=jumpboost,tag=node] run effect clear @s jump_boost
