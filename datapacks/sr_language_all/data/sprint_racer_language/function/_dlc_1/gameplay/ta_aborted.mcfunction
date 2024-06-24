tag @s add thissMe

title @a subtitle [""]
title @a title [""]
title @a actionbar [""]

tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.game.abort","color":"yellow","bold":true}]
tellraw @a[tag=!thissMe] ["",{"translate":"sr.game.aborted_by_1","color":"yellow","bold":false},{"selector":"@s"},{"translate":"sr.game.aborted_by_2","color":"yellow","bold":false}]
tellraw @a ["",{"text":" "}]

tag @s remove thissMe

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5