execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!realms] run tellraw @s ["",{"text":"\nToy Tank Royale (2021)","bold":true,"color":"gold"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run tellraw @s ["",{"text":"\nToy Turtle Royale (2021)","bold":true,"color":"gold"}]
tellraw @s ["",{"text":"Planet Minecraft / Minecraft Realms","color":"#FFFF77"}]
tellraw @s ["",{"translate":"sr.lobby.arcade.toy_tank_royale","color":"white"}]
tellraw @s ["",{"text":" "}]

execute at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 .7