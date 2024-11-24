#item will die
tag @s remove capsuleItem
scoreboard players set @s lifespan 0

#give player item depending on what we are
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no0:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no0

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no1:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no1
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no2:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no2
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no3:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no3
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no4:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no4
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no5:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no5
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no6:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no6
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no7:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no7
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no8:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no8
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no9:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no9
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no10:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no10

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no11:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no11
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no12:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no12
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no13:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no13
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no14:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no14
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no15:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no15
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no16:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no16
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no17:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no17
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no18:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no18
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no19:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no19
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{no20:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/no20

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{fishing_rod:1b}}}}] run return run execute as @e[tag=capsuleCollect,distance=..5] run function sprint_racer_language:gameplay/give_item/fishing_rod