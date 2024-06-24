tag @e[tag=cheategg,tag=!eggshow,distance=..2] add focusegg

execute as @e[tag=focusegg] run data merge entity @s {CustomNameVisible:1b}
tag @e[tag=focusegg] add eggshow

tag @e[tag=focusegg] remove focusegg