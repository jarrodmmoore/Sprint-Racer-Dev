summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","activator","showing"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
#none

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_activator

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s