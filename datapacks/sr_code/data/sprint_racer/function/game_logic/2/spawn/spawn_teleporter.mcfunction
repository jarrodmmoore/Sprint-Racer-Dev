execute as @e[limit=1,type=enderman,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","teleporter","showing"]}
kill @e[limit=1,type=enderman,tag=killme]
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=teleporter] teleport = @s teleport
execute if entity @s[tag=teledest] run tag @e[limit=1,tag=node,tag=setup,tag=teleporter] add showDispenser
execute if entity @s[tag=teledest] run tag @e[limit=1,tag=node,tag=setup,tag=teleporter] add teledest
execute as @e[tag=teleporter,tag=teledest,tag=setup] run data merge entity @s {equipment:{head:{id:"minecraft:dispenser",count:1}}}
execute if entity @s[tag=teleparticle] run tag @e[limit=1,tag=node,tag=setup,tag=teleporter] add teleparticle
execute if entity @s[tag=telesound] run tag @e[limit=1,tag=node,tag=setup,tag=teleporter] add telesound
execute as @e[limit=1,tag=node,tag=setup,tag=teleporter,tag=!teledest] run function sprint_racer_language:editor_mode/name/name_teleport_source
execute as @e[limit=1,tag=node,tag=setup,tag=teleporter,tag=teledest] run function sprint_racer_language:editor_mode/name/name_teleport_destination
tag @e[limit=1,tag=node,tag=setup,tag=teleporter] remove setup