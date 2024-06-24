setblock 1074 74 553 minecraft:spruce_stairs[facing=west,half=top]
setblock 1074 75 553 minecraft:oak_log
setblock 1074 76 553 minecraft:spruce_stairs[facing=east,half=bottom]

setblock 1079 74 553 minecraft:spruce_stairs[facing=east,half=top]
setblock 1079 75 553 minecraft:oak_log
setblock 1079 76 553 minecraft:spruce_stairs[facing=west,half=bottom]

fill 1075 75 553 1078 75 553 minecraft:oak_fence
fill 1075 76 553 1078 76 553 minecraft:oak_log[axis=x]
fill 1075 77 553 1078 77 553 minecraft:jungle_leaves[persistent=true]

setblock 1074 78 553 minecraft:jungle_leaves[persistent=true]

execute if entity @s[tag=allow_meme] run fill 1074 74 553 1079 78 553 air

tag @s remove allow_meme