#no "stay" tag? we delete ourselves
execute if entity @s[tag=!stay] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{stay:1b}}}}] unless score @s lifespan matches 0.. run scoreboard players set @s lifespan 0

#count up age. used for validation & some AI stuff
scoreboard players add @s itemDropAge 1

#dropped item is considered invalid if it was spawned in a previous round
execute if score @s itemDropAge matches 1 run scoreboard players set @s itemBlockState -55
execute if score @s itemDropAge matches 2.. unless score @s itemBlockState matches -55 unless score @s lifespan matches 0.. run scoreboard players set @s lifespan 0