execute as @e[limit=1,type=zombie_villager,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","itemchest","showing","5plus","aiCantSee"]}
kill @e[limit=1,type=zombie_villager,tag=killme]

scoreboard players set @e[limit=1,tag=node,tag=setup,tag=itemchest] playerRequire 5

execute as @e[limit=1,tag=node,tag=setup,tag=itemchest] run function sprint_racer_language:editor_mode/name/name_itemchest
tag @e[limit=1,tag=node,tag=setup,tag=itemchest] remove setup