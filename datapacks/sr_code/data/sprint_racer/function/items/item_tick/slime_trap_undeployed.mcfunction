particle falling_dust{block_state:"minecraft:slime_block"} ~ ~.75 ~ 0.1 0.1 0.1 .1 2

#deploy on contact with ground
execute if entity @s[nbt={OnGround:1b}] run function sprint_racer:items/item_tick/slime_trap_set

#dissolve in water
execute at @s if block ~ ~ ~ water run tag @s add dissolve