scoreboard players set @s afkTime 0

tag @s[tag=minChat] add turnOFFmc

tag @s[tag=turnOFFmc] remove minChat
#execute if entity @s[tag=turnOFFmc] run function sprint_racer_language:minimal_chat_disabled

tag @s[tag=!turnOFFmc] add minChat
#execute if entity @s[tag=!turnOFFmc] run function sprint_racer_language:minimal_chat_enabled

execute at @s run playsound minecraft:block.note_block.hat master @s

tag @s[tag=turnOFFmc] remove turnOFFmc