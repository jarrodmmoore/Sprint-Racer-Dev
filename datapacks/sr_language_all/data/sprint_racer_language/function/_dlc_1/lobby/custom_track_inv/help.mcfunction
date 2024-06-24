tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.custom_track_help","color":"white","bold":true}]
tellraw @a ["",{"translate":"sr.lobby.link","color":"white"},{"text":"[Custom Track Guide]","color":"light_purple","clickEvent":{"action":"open_url","value":"https://docs.google.com/document/d/1W31nesx2PU3kdIcisPLiqzuhx5IibQ355dAdPVqQuR4/edit?usp=sharing"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Sprint Racer | Custom Track Guide\nGoogle Docs"}]}}]

scoreboard players set @s inputCooldown 20

execute as @a at @s run playsound minecraft:block.bamboo.place master @s ~ 100000 ~ 100000