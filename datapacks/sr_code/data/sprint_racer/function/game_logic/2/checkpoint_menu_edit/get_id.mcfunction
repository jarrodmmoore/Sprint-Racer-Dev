scoreboard players add global checkpointID 1
scoreboard players operation @s checkpointID = global checkpointID

tellraw @a[limit=1,sort=nearest,gamemode=creative] ["",{"text":"Assigned ID "},{"score":{"name":"@s","objective":"checkpointID"},"color":"yellow"},{"text":" to this checkpoint."}]