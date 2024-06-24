#disabled this message due to visual clutter
#execute if entity @s[tag=checkText] run tellraw @s[tag=!minChat] ["",{"text":"Checkpoint! [","bold":true},{"score":{"name":"@s","objective":"check"},"bold":true},{"text":"/","bold":true},{"score":{"name":"@e[tag=w,limit=1]","objective":"check"},"bold":true},{"text":"]","bold":true}]

execute if entity @s[tag=checkSound,tag=!splitAhead,tag=!splitBehind] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=checkSound,tag=splitAhead] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.3
execute if entity @s[tag=checkSound,tag=splitBehind] run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.1

tag @s remove splitAhead
tag @s remove splitBehind