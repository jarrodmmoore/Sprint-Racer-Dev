execute if entity @s[tag=!playerOrange,tag=!playerCyan] run tag @e[limit=1,tag=activeplayer,tag=!myCHILD,distance=..15,sort=nearest,scores={invisibility=..0,invulTime=..0}] add checkLOS
execute if entity @s[tag=playerOrange] run tag @e[limit=1,tag=activeplayer,tag=playerCyan,tag=!myCHILD,distance=..15,sort=nearest,scores={invisibility=..0,invulTime=..0}] add checkLOS
execute if entity @s[tag=playerCyan] run tag @e[limit=1,tag=activeplayer,tag=playerOrange,tag=!myCHILD,distance=..15,sort=nearest,scores={invisibility=..0,invulTime=..0}] add checkLOS

scoreboard players set #checkLOS value 0
scoreboard players set #recursions value 39
execute at @s positioned ~ ~1.4 ~ facing entity @e[tag=checkLOS,limit=1] eyes run function sprint_racer:ai/battle/check_los_to_player_recursive

tag @e[tag=checkLOS,limit=1] remove checkLOS

#cancel if no LOS was found
execute if score #checkLOS value matches 0 run tag @s remove chaseSomeone
execute if score #checkLOS value matches 0 run tag @s remove runAway