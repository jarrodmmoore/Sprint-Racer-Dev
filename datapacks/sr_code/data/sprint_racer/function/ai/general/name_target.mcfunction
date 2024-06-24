execute if entity @s[tag=ai1] run tag @e[tag=nameThisTarget,limit=1] add aiTarget1
execute if entity @s[tag=ai2] run tag @e[tag=nameThisTarget,limit=1] add aiTarget2
execute if entity @s[tag=ai3] run tag @e[tag=nameThisTarget,limit=1] add aiTarget3
execute if entity @s[tag=ai4] run tag @e[tag=nameThisTarget,limit=1] add aiTarget4
execute if entity @s[tag=ai5] run tag @e[tag=nameThisTarget,limit=1] add aiTarget5
execute if entity @s[tag=ai6] run tag @e[tag=nameThisTarget,limit=1] add aiTarget6
execute if entity @s[tag=ai7] run tag @e[tag=nameThisTarget,limit=1] add aiTarget7
execute if entity @s[tag=ai8] run tag @e[tag=nameThisTarget,limit=1] add aiTarget8
execute if entity @s[tag=ai9] run tag @e[tag=nameThisTarget,limit=1] add aiTarget9

execute if entity @s[tag=ai1] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI1 1
execute if entity @s[tag=ai2] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI2 1
execute if entity @s[tag=ai3] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI3 1
execute if entity @s[tag=ai4] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI4 1
execute if entity @s[tag=ai5] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI5 1
execute if entity @s[tag=ai6] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI6 1
execute if entity @s[tag=ai7] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI7 1
execute if entity @s[tag=ai8] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI8 1
execute if entity @s[tag=ai9] run scoreboard players set @e[tag=nameThisTarget,limit=1] validAI9 1

tag @e[tag=nameThisTarget] remove nameThisTarget