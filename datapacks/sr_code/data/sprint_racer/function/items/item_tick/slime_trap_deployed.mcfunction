particle falling_dust{block_state:"minecraft:green_concrete"} ~ ~.75 ~ 0.2 0.1 0.2 .01 1

#detect nearby players
execute at @s as @e[limit=1,tag=activeplayer,scores={invulTime=..0,invisibility=..0},distance=..2,nbt={OnGround:1b}] at @s run function sprint_racer:items/item_tick/slime_trap_hit