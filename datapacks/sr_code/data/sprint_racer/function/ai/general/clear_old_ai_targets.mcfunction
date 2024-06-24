execute if entity @s[tag=ai1] run kill @e[tag=aiTarget1,type=marker,tag=!node]
execute if entity @s[tag=ai2] run kill @e[tag=aiTarget2,type=marker,tag=!node]
execute if entity @s[tag=ai3] run kill @e[tag=aiTarget3,type=marker,tag=!node]
execute if entity @s[tag=ai4] run kill @e[tag=aiTarget4,type=marker,tag=!node]
execute if entity @s[tag=ai5] run kill @e[tag=aiTarget5,type=marker,tag=!node]
execute if entity @s[tag=ai6] run kill @e[tag=aiTarget6,type=marker,tag=!node]
execute if entity @s[tag=ai7] run kill @e[tag=aiTarget7,type=marker,tag=!node]
execute if entity @s[tag=ai8] run kill @e[tag=aiTarget8,type=marker,tag=!node]
execute if entity @s[tag=ai9] run kill @e[tag=aiTarget9,type=marker,tag=!node]

#this part was bugged for almost a year, how embarassing
execute if entity @s[tag=ai1] run tag @e[tag=aiTarget1] remove aiTarget1
execute if entity @s[tag=ai2] run tag @e[tag=aiTarget2] remove aiTarget2
execute if entity @s[tag=ai3] run tag @e[tag=aiTarget3] remove aiTarget3
execute if entity @s[tag=ai4] run tag @e[tag=aiTarget4] remove aiTarget4
execute if entity @s[tag=ai5] run tag @e[tag=aiTarget5] remove aiTarget5
execute if entity @s[tag=ai6] run tag @e[tag=aiTarget6] remove aiTarget6
execute if entity @s[tag=ai7] run tag @e[tag=aiTarget7] remove aiTarget7
execute if entity @s[tag=ai8] run tag @e[tag=aiTarget8] remove aiTarget8
execute if entity @s[tag=ai9] run tag @e[tag=aiTarget9] remove aiTarget9

execute if entity @s[tag=ai1] run tag @e[tag=aiElyTarget1] remove aiElyTarget1
execute if entity @s[tag=ai2] run tag @e[tag=aiElyTarget2] remove aiElyTarget2
execute if entity @s[tag=ai3] run tag @e[tag=aiElyTarget3] remove aiElyTarget3
execute if entity @s[tag=ai4] run tag @e[tag=aiElyTarget4] remove aiElyTarget4
execute if entity @s[tag=ai5] run tag @e[tag=aiElyTarget5] remove aiElyTarget5
execute if entity @s[tag=ai6] run tag @e[tag=aiElyTarget6] remove aiElyTarget6
execute if entity @s[tag=ai7] run tag @e[tag=aiElyTarget7] remove aiElyTarget7
execute if entity @s[tag=ai8] run tag @e[tag=aiElyTarget8] remove aiElyTarget8
execute if entity @s[tag=ai9] run tag @e[tag=aiElyTarget9] remove aiElyTarget9