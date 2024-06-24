execute if entity @a[gamemode=!spectator,distance=..6] run tp @s ~ ~ ~ facing entity @a[limit=1,gamemode=!spectator,distance=..6,sort=nearest] feet

execute unless entity @a[gamemode=!spectator,distance=..6] if entity @s[tag=facesouth] run tp @s ~ ~ ~ 0 0
execute unless entity @a[gamemode=!spectator,distance=..6] if entity @s[tag=facewest] run tp @s ~ ~ ~ 90 0
execute unless entity @a[gamemode=!spectator,distance=..6] if entity @s[tag=facenorth] run tp @s ~ ~ ~ 180 0
execute unless entity @a[gamemode=!spectator,distance=..6] if entity @s[tag=faceeast] run tp @s ~ ~ ~ 270 0