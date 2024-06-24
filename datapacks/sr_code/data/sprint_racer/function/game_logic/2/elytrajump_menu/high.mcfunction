tag @s remove elytraShort
tag @s remove elytraMed
tag @s add elytraHigh
execute if entity @s run playsound minecraft:block.note_block.hat master @s
scoreboard players set @s dropBatEgg 1