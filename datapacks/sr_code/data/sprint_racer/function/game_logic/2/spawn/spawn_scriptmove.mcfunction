execute as @e[limit=1,type=endermite,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","scriptmove","showDispenser","showing"]}
kill @e[limit=1,type=endermite,tag=killme]
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=scriptmove] scriptMove = @s scriptMove
execute if entity @s[tag=scriptStart] run tag @e[limit=1,tag=node,tag=setup,tag=scriptmove] add scriptStart
execute if entity @s[tag=requireBoost] run tag @e[limit=1,tag=node,tag=setup,tag=scriptmove] add requireBoost
execute if entity @s[tag=scriptEnd] run tag @e[limit=1,tag=node,tag=setup,tag=scriptmove] add scriptEnd
execute as @e[limit=1,tag=node,tag=setup,tag=scriptmove] run function sprint_racer_language:editor_mode/name/name_scriptmove
tag @e[limit=1,tag=node,tag=setup,tag=scriptmove] remove setup