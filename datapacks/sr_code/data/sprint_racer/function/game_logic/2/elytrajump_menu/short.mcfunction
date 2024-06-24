tag @s add elytraShort
tag @s remove elytraMed
tag @s remove elytraHigh
execute if entity @s run playsound minecraft:block.note_block.hat master @s
scoreboard players set @s dropBatEgg 1