execute as @e[limit=1,type=drowned,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","playerstart","showing","showDispenser"]}
kill @e[limit=1,type=drowned,tag=killme]
execute if entity @s[tag=psBattle] run tag @e[limit=1,tag=node,tag=setup,tag=playerstart] add psBattle
execute if entity @s[tag=psTeamOrange] run tag @e[limit=1,tag=node,tag=setup,tag=playerstart] add psTeamOrange
execute if entity @s[tag=psTeamCyan] run tag @e[limit=1,tag=node,tag=setup,tag=playerstart] add psTeamCyan
execute if entity @s[tag=psTimeAttack] run tag @e[limit=1,tag=node,tag=setup,tag=playerstart] add psTimeAttack
execute as @e[limit=1,tag=node,tag=setup,tag=playerstart] run function sprint_racer_language:_dlc_1/editor_mode/name/name_playerstart
tag @e[limit=1,tag=node,tag=setup,tag=playerstart] remove setup