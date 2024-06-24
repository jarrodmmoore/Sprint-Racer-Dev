summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","playerstart","showing","showDispenser"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
execute if entity @s[tag=psBattle] run tag @e[tag=setup] add psBattle
execute if entity @s[tag=psTimeAttack] run tag @e[tag=setup] add psTimeAttack

#name self
execute as @e[tag=setup] run function sprint_racer_language:_dlc_1/editor_mode/name/name_playerstart

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s