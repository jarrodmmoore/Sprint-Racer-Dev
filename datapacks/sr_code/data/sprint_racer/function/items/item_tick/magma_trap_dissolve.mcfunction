particle falling_dust{block_state:"minecraft:magma_block"} ~ ~.5 ~ 0.25 0.25 0.25 .1 30
playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 1.3
tag @s remove magmatrap
scoreboard players set @s lifespan 0