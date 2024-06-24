tag @s remove itemBattle
execute if entity @s run playsound minecraft:block.note_block.hat master @s
scoreboard players set @s dropOrangeDye 1
tag @s add dontInherit