execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.game.finished_editing_custom_tracks","color":"light_purple","bold":true}]
tellraw @a ["",{"translate":"sr.game.players_returned_to_lobby","color":"white","bold":false}]
tellraw @a ["",{"text":" "}]