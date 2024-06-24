scoreboard players set @e[tag=w,type=armor_stand] mapZone 3
scoreboard players set @a[scores={check=..1}] mapZone 3

fill 297 68 284 297 69 286 minecraft:smooth_stone_slab[type=double]
fill 297 68 277 297 69 280 minecraft:air
fill 297 68 271 297 69 273 minecraft:smooth_stone_slab[type=double]

setblock 299 75 285 redstone_block
setblock 312 71 279 redstone_block
setblock 320 73 272 redstone_block

tag @e[tag=RFcheckpoint] remove posCalc
tag @e[tag=RFcheckpoint,tag=route3] add posCalc

scoreboard players set @e[tag=node,tag=AIBC,tag=set_ai_route] AIBC_dir1 5

function sprint_racer_language:levels/redstone_factory/open_gold_route