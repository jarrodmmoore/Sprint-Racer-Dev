summon marker ~ ~ ~ {Tags:["setup","node","finishline","showing","visualBound","showDispenser"]}

#carry over scoreboard stuff
scoreboard players operation @e[tag=setup] nCheck = @s nCheck
execute if entity @s[tag=finAnyY] run tag @e[tag=setup] add finAnyY
execute if entity @s[tag=finWarn] run tag @e[tag=setup] add finWarn
execute if entity @s[tag=finWrongWay] run tag @e[tag=setup] add finWrongWay
execute if entity @s[tag=posCalc] run tag @e[tag=setup] add posCalc

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_finishline

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s