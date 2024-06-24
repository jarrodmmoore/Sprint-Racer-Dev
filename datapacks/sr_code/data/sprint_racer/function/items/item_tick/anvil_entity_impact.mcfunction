#impact and damage nearby players (can only happen once!)
tp @s ~ ~-1 ~
playsound minecraft:block.anvil.land master @a ~ ~ ~ 2 .8
particle block{block_state:"minecraft:anvil"} ~ ~1.4 ~ 0.4 0.2 0.4 1 25 force
execute if entity @s[tag=anvilLinger] run scoreboard players set @s lifespan 10
execute if entity @s[tag=!anvilLinger] run scoreboard players set @s lifespan 2
kill @e[tag=chickenmine,distance=..2]
effect give @e[tag=activeplayer,distance=..2] resistance 1 0 true
effect give @e[tag=activeplayer,scores={resistTime=1..},distance=..2] resistance 1 2 true
effect give @e[tag=activeplayer,tag=!undead,distance=..2] instant_damage 1 1 true
effect give @e[tag=activeplayer,tag=undead,distance=..2] instant_health 1 1 true
execute as @e[type=wither,distance=..2] run function sprint_racer:ai/general/wither_take_damage_big
scoreboard players set @e[tag=activeplayer,distance=..2] moveSpeed 0
execute as @a[tag=activeplayer,distance=..2] run tp @s @s
scoreboard players operation @e[tag=activeplayer,distance=..2] attackerID = @s playerID
scoreboard players set @e[tag=activeplayer,distance=..2] attackTime 100
tag @s add impacted