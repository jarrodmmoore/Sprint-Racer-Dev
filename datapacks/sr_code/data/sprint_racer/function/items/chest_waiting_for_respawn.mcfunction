#particles indicate state
execute if entity @s[scores={itemBlockState=40..199}] run particle dust{color:[1.0,1.0,1.0],scale:1.2} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
execute if entity @s[scores={itemBlockState=200..399}] run particle dust{color:[0.8,0.8,0.8],scale:1} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
execute if entity @s[scores={itemBlockState=300..599}] run particle dust{color:[0.6,0.6,0.6],scale:0.8} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
execute if entity @s[scores={itemBlockState=600..799}] run particle dust{color:[0.4,0.4,0.5],scale:0.75} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
execute if entity @s[scores={itemBlockState=800..}] run particle dust{color:[0.2,0.2,0.2],scale:0.5} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
particle dust{color:[1.0,1.0,0.0],scale:0.8} ~ ~.55 ~ 0.2 0.2 0.2 0 1 force @a[distance=..20,scores={itemCooldown=..0}]

execute as @a[distance=..2,gamemode=!spectator,scores={itemCooldown=..0}] at @s run function sprint_racer:items/give_player_minor_boost