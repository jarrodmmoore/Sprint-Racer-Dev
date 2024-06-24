tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.track_location_set","color":"light_purple","bold":true}]
tellraw @a ["",{"text":"x=","color":"white","bold":false},{"score":{"name":"@s","objective":"mvmt_coord_x"},"color":"white","bold":false},{"text":", z=","color":"white","bold":false},{"score":{"name":"@s","objective":"mvmt_coord_z"},"color":"white","bold":false}]
execute as @a at @s run playsound minecraft:block.piston.extend master @a ~ 10000 ~ 10000 1