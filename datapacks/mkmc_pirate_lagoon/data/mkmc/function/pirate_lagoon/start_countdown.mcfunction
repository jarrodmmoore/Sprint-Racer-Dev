#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run title @a title {"text":"GET READY","bold":true,"color":"gold"}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run execute as @a at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run title @a title {"text":"GO!","bold":true,"color":"light_purple"}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run execute as @a at @s run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 1 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run execute as @a at @s run playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 0.5 1.3 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=162}] run effect give @e[tag=activeplayer] speed 1 20 true