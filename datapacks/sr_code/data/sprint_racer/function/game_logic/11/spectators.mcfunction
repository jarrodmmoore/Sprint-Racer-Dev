gamemode spectator @a[tag=!admin]
execute as @a[gamemode=spectator,tag=!admin] at @s run spectate @a[limit=1,sort=nearest,tag=admin] @s

execute unless entity @a[tag=admin,tag=!afk] run function sprint_racer:game_logic/11/exit