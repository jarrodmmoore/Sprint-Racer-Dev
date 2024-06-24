scoreboard players remove @s storm 1

execute if entity @s[scores={lightningSafe=1}] as @e[limit=2,sort=random,tag=activeplayer,scores={invisibility=..0,lightningSafe=..0}] run function sprint_racer:items/item_tick/struck_by_lightning
execute if entity @s[scores={lightningSafe=25}] as @e[limit=1,sort=random,tag=chickenmine] run function sprint_racer:items/item_tick/struck_by_lightning

#time between lightning strikes is somewhat randomized
execute if entity @s[scores={lightningSafe=..0}] run scoreboard players operation @s lightningSafe = @e[limit=1,sort=random,tag=random,scores={rNumber=12..50}] rNumber

execute if entity @s[scores={storm=20}] if entity @e[tag=w,tag=raining] run weather rain
execute if entity @s[scores={storm=20}] if entity @e[tag=w,tag=!raining] run weather clear

scoreboard players reset @e[scores={storm=..0}] storm