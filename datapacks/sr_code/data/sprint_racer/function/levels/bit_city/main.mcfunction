function sprint_racer:levels/bit_city/map

effect give @a minecraft:night_vision 14 1 true



#die if fallen down
execute as @a[gamemode=adventure,scores={coord_y=..1200000}] at @s if block ~ ~-1 ~ white_stained_glass run kill @s
execute as @e[tag=ai] at @s if block ~ ~-1 ~ white_stained_glass run function sprint_racer:ai/general/die
#tag @e[tag=ai,x=-2258,y=153,z=-1872,dx=2,dy=3,dz=14] add aijump


#slow falling fans
tag @e[tag=bitcityfly] remove bitcityfly

execute as @e[tag=scriptmove,scores={nodeState=1..},type=marker] at @s positioned ~.5 ~.1 ~.5 if entity @a[distance=..10] run particle cloud ~ ~ ~ 0.35 0 0.35 .1 1 normal
execute as @e[tag=scriptmove,scores={nodeState=1..},type=marker] at @s positioned ~-1 ~1 ~-1 run tag @e[tag=activeplayer,dx=2,dy=6,dz=2,scores={elytraTimer=..0}] add bitcityfly

effect give @e[tag=bitcityfly] slow_falling 7 1 false
#lose slow falling when the ground is touched
effect clear @e[tag=activeplayer,tag=!bitcityfly,nbt={OnGround:1b},scores={elytraTimer=..0}] slow_falling

tag @e[tag=bitcityfly] remove bitcityfly