playsound minecraft:block.note_block.hat master @s
scoreboard players add @s scriptMove 1
execute if entity @s[scores={scriptMove=5..}] run scoreboard players set @s scriptMove 1

scoreboard players set @s dropEndermiteEgg 1