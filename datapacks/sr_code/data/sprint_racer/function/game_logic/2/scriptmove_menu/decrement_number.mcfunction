playsound minecraft:block.note_block.hat master @s
scoreboard players remove @s scriptMove 1
execute if entity @s[scores={scriptMove=..0}] run scoreboard players set @s scriptMove 4

scoreboard players set @s dropEndermiteEgg 1