tag @s add self
playsound minecraft:entity.enderman.teleport master @a[tag=!self]
playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000
particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1 ~ 0.2 0.4 0.2 0 20
tag @s remove self