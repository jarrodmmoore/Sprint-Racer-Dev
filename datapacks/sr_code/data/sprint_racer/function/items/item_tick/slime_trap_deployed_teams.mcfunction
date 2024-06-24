particle falling_dust{block_state:"minecraft:green_concrete"} ~ ~.75 ~ 0.2 0.1 0.2 .01 1
execute if entity @s[tag=!itemCyan] run particle falling_dust{block_state:"minecraft:orange_concrete"} ~ ~.75 ~ 0.2 0.1 0.2 .01 1
execute if entity @s[tag=itemCyan] run particle falling_dust{block_state:"minecraft:cyan_concrete"} ~ ~.75 ~ 0.2 0.1 0.2 .01 1

#detect nearby players
execute if entity @s[tag=itemCyan] as @e[limit=1,sort=nearest,tag=playerOrange,tag=activeplayer,scores={invulTime=..0,invisibility=..0},distance=..2,nbt={OnGround:1b}] at @s run function sprint_racer:items/item_tick/slime_trap_hit
execute if entity @s[tag=!itemCyan] as @e[limit=1,sort=nearest,tag=playerCyan,tag=activeplayer,scores={invulTime=..0,invisibility=..0},distance=..2,nbt={OnGround:1b}] at @s run function sprint_racer:items/item_tick/slime_trap_hit