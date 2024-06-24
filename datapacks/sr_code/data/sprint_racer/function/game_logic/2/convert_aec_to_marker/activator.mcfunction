summon marker ~ ~ ~ {Tags:["setup","node","activator","showing"]}

#carry over scoreboard stuff
#none

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_activator

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s