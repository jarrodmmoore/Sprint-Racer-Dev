execute unless entity @a[gamemode=!spectator,distance=..5] run tag @s add hideegg

data merge entity @s[tag=hideegg] {CustomNameVisible:false}
tag @s[tag=hideegg] remove eggshow

tag @s[tag=hideegg] remove hideegg