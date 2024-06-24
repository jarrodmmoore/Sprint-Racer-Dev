summon marker ~ ~ ~ {Tags:["setup","node","resistance","showing"]}

#carry over scoreboard stuff
execute if entity @s[tag=resLong] run tag @e[tag=setup] add resLong

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_resistance

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s