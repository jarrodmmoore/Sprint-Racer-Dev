data merge entity @s {fuse:10000}

scoreboard players add @s age 1
particle large_smoke ~ ~ ~ .05 .05 .05 .01 1 force

execute if entity @s[scores={age=2}] run data merge entity @s {Glowing:1}

#explode faster if there are players nearby
#also try to explode on direct impact
execute if entity @s[scores={age=..9,playerID=-2147483648..2147483647}] at @s if entity @e[tag=activeplayer,distance=..5,scores={invisibility=..0}] run function sprint_racer:items/item_tick/tnt_point_blank
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=activeplayer,distance=..5,scores={invisibility=..0}] run scoreboard players add @s age 5
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=activeplayer,distance=..3,scores={invisibility=..0}] run scoreboard players add @s age 12
execute if entity @s[scores={age=10..}] at @s if entity @e[tag=activeplayer,distance=..2,scores={invisibility=..0}] run scoreboard players add @s age 100

#explode when age reaches 100
execute if entity @s[scores={age=100..}] at @s if entity @a[tag=playing,nbt={FallFlying:1b},distance=..3] at @a[limit=1,sort=nearest,tag=playing,nbt={FallFlying:1b},distance=..3] positioned ^ ^ ^-.2 run tp @s ~ ~ ~
execute if entity @s[scores={age=100..}] at @s run function sprint_racer:explode
kill @s[scores={age=100..}]