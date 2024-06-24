particle falling_dust{block_state:"minecraft:slime_block"} ~ ~.5 ~ 0.25 0.25 0.25 .1 30
playsound minecraft:item.bottle.empty master @a ~ ~ ~ 1 1.3
tag @s remove slimetrap
scoreboard players set @s lifespan 0