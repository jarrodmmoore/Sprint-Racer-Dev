scoreboard players set #bbSlot value 1
execute as @a[tag=playing] run function sprint_racer:game_logic/1/lap_bossbar/get_personal_bbar

bossbar set minecraft:lap1 color green
bossbar set minecraft:lap1 max 1
bossbar set minecraft:lap1 value 0
execute store result bossbar minecraft:lap1 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap2 color green
bossbar set minecraft:lap2 max 1
bossbar set minecraft:lap2 value 0
execute store result bossbar minecraft:lap2 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap3 color green
bossbar set minecraft:lap3 max 1
bossbar set minecraft:lap3 value 0
execute store result bossbar minecraft:lap3 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap4 color green
bossbar set minecraft:lap4 max 1
bossbar set minecraft:lap4 value 0
execute store result bossbar minecraft:lap4 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap5 color green
bossbar set minecraft:lap5 max 1
bossbar set minecraft:lap5 value 0
execute store result bossbar minecraft:lap5 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap6 color green
bossbar set minecraft:lap6 max 1
bossbar set minecraft:lap6 value 0
execute store result bossbar minecraft:lap6 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap7 color green
bossbar set minecraft:lap7 max 1
bossbar set minecraft:lap7 value 0
execute store result bossbar minecraft:lap7 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap8 color green
bossbar set minecraft:lap8 max 1
bossbar set minecraft:lap8 value 0
execute store result bossbar minecraft:lap8 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap9 color green
bossbar set minecraft:lap9 max 1
bossbar set minecraft:lap9 value 0
execute store result bossbar minecraft:lap9 max run scoreboard players get #bbDisplayTotal value
bossbar set minecraft:lap10 color green
bossbar set minecraft:lap10 max 1
bossbar set minecraft:lap10 value 0
execute store result bossbar minecraft:lap10 max run scoreboard players get #bbDisplayTotal value

scoreboard players set #bbPersonalize value 1