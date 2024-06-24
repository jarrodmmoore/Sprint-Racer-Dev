execute if block ~ ~-2 ~ magenta_terracotta run tp @s ~-.4 ~ ~ facing ~-1 ~ ~
execute if block ~ ~-2 ~ white_terracotta run tp @s ~.4 ~ ~ facing ~1 ~ ~
execute if block ~ ~-2 ~ orange_terracotta run tp @s ~ ~ ~.4 facing ~ ~ ~1
execute if block ~ ~-2 ~ light_blue_terracotta run tp @s ~ ~ ~-.4 facing ~ ~ ~-1

particle block{block_state:"minecraft:white_concrete"} ^ ^.1 ^-1 .1 0 .1 1 2 normal
particle block{block_state:"minecraft:black_concrete"} ^ ^.1 ^-1 .1 0 .1 1 2 normal