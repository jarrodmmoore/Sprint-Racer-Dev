particle flame ~ ~.7 ~ 0.2 0.2 0.2 .01 1

#detect nearby players
execute as @e[limit=1,tag=activeplayer,scores={invulTime=..0,invisibility=..0},distance=..2,nbt={OnGround:1b}] at @s run function sprint_racer:items/item_tick/magma_trap_hit