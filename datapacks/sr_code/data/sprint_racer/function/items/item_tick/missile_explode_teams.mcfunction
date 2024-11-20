execute if score #hit value matches 1 if entity @s[tag=missile,tag=fireball,tag=itemCyan] run scoreboard players set @e[tag=activeplayer,tag=playerOrange,distance=..2] burn 1
execute if score #hit value matches 1 if entity @s[tag=missile,tag=fireball,tag=!itemCyan] run scoreboard players set @e[tag=activeplayer,tag=playerCyan,distance=..2] burn 1
execute if score #hit value matches 1 run function sprint_racer:explode_fake_teams

execute if score #hit value matches 1 run function sprint_racer:explode
scoreboard players set @s lifespan 0
execute on passengers run scoreboard players set @s lifespan 0
tag @s remove missile