summon marker ~ ~ ~ {Tags:["setup","node","tatarget","showing"]}

#carry over scoreboard stuff
execute if entity @s[tag=targetImpossible] run tag @e[tag=setup] add targetImpossible

#name self
execute as @e[tag=setup] run function sprint_racer_language:_dlc_1/editor_mode/name/name_target

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s