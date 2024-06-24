scoreboard players set @a subtitleDelay 20

title @a subtitle ["",{"translate":"sr.game.sudden_death","color":"gold","bold":true}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.chicken.hurt master @s ~ 100000 ~ 100000

tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.game.sudden_death","color":"gold","bold":true}]
tellraw @a ["",{"translate":"sr.game.all_players_have_1_life","color":"white"}]
tellraw @a ["",{"text":" "}]