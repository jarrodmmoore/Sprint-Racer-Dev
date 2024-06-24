#black_wool = random

#slot 1, gamemode
execute if entity @s[scores={gameState=1}] run setblock ~ ~ ~ light_blue_wool
execute if entity @s[scores={gameState=3}] run setblock ~ ~ ~ red_wool
execute if entity @s[tag=randomMode] run setblock ~ ~ ~ black_wool

#slot 2, random?
setblock ~1 ~ ~ stone
execute if entity @s[tag=randomTrack] run setblock ~1 ~ ~ black_wool

#slot 3, gamemode (map default until changed later)
setblock ~2 ~ ~ oak_planks

#slot 4, modifier (lap count or etc, blank until changed later)
setblock ~3 ~ ~ stone

#slot 5, track select type (random, vote, etc. blank until changed later)
setblock ~4 ~ ~ stone

#slot 6, save state (blank until changed later)
setblock ~5 ~ ~ stone

#erase track
execute if entity @s[tag=eraseTrack] run setblock ~ ~ ~ stone
execute if entity @s[tag=eraseTrack] run setblock ~1 ~ ~ stone
execute if entity @s[tag=eraseTrack] run setblock ~2 ~ ~ stone
execute if entity @s[tag=eraseTrack] run setblock ~3 ~ ~ stone
execute if entity @s[tag=eraseTrack] run setblock ~4 ~ ~ stone
execute if entity @s[tag=eraseTrack] run setblock ~5 ~ ~ stone
#...not doing a fill because it's weirdly buggy with how I'm calling this function

#prevent track 1 from getting cleared... why it be doin this idk
execute if entity @s[tag=!eraseTrack,scores={gpNumber=1}] run clone 1584 39 373 1589 39 373 1584 40 373
execute if entity @s[scores={gpNumber=2..}] run clone 1584 40 373 1589 40 373 1584 39 373

tag @s remove randomMode
tag @s remove randomTrack
tag @s remove eraseTrack