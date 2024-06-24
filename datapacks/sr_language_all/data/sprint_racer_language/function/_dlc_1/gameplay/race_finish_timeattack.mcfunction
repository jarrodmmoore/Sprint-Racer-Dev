tag @s add textSelf
tellraw @a[tag=!textSelf] ["",{"text":" "}]
tellraw @a[tag=!textSelf] ["",{"selector":"@s"},{"text":" >> ","color":"yellow","bold":true},{"translate":"sr.game.finished","color":"yellow","bold":true}]
tellraw @a[tag=!textSelf] ["",{"text":" "}]

title @a subtitle [""]
title @s title ["",{"translate":"sr.game.finished","color":"yellow","bold":true}]
title @a[tag=!textSelf] title [""]
tag @s remove textSelf