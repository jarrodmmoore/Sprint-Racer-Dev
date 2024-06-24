execute if entity @s[scores={jump=20..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={jump=..19}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={jump=..19}] run scoreboard players add @s jump 1

scoreboard players set @s dropWitchEgg 1