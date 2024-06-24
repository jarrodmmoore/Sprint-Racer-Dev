execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.grand_prix.exit_1","color":"gold","bold":true}]
tellraw @a ["",{"translate":"sr.grand_prix.exit_2","color":"white","bold":false}]
tellraw @a ["",{"text":" "}]