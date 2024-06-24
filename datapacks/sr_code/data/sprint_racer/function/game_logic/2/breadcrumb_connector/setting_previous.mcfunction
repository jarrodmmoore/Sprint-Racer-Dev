execute if entity @s[scores={settingPath=..-1}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={settingPath=0..}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={settingPath=0..}] run scoreboard players remove @s settingPath 1

scoreboard players set @s dropStick 1