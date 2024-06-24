tellraw @a ["",{"text":" "}]
execute if entity @s[scores={finishPos=1}] run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"white","bold":true},{"translate":"sr.game.eliminated","color":"white","bold":true},{"text":" [1st]","color":"white","bold":true}]
execute if entity @s[scores={finishPos=2}] run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"white","bold":true},{"translate":"sr.game.eliminated","color":"white","bold":true},{"text":" [2nd]","color":"white","bold":true}]
execute if entity @s[scores={finishPos=3}] run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"white","bold":true},{"translate":"sr.game.eliminated","color":"white","bold":true},{"text":" [3rd]","color":"white","bold":true}]
execute if entity @s[scores={finishPos=4..20}] run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"white","bold":true},{"translate":"sr.game.eliminated","color":"white","bold":true},{"text":" [","color":"white","bold":true},{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":true},{"text":"th]","color":"white","bold":true}]
execute unless entity @s[scores={finishPos=1..20}] run tellraw @a ["",{"selector":"@s"},{"text":" >> ","color":"white","bold":true},{"translate":"sr.game.eliminated","color":"white","bold":true},{"text":" [","color":"white","bold":true},{"score":{"name":"@s","objective":"finishPos"},"color":"white","bold":true},{"text":"]","color":"white","bold":true}]
tellraw @a ["",{"text":" "}]

scoreboard players set @s subtitleDelay 40
title @s subtitle ["",{"translate":"sr.game.eliminated","color":"red","bold":true}]
title @s title [""]

execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ 100000 ~ .7 1.2 .7
execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 1000000 .6