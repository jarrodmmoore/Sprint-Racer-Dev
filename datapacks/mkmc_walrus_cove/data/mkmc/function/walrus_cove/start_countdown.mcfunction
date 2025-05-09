#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#artificial 3,2,1,GO countdown
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=125}] run title @a subtitle [""]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=125}] run title @a title ["",{text:"GET READY",color:"yellow",bold:true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=125}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~100000 ~ 100000 1.5

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run title @a subtitle [""]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run title @a title ["",{text:"GO!",color:"dark_purple",bold:true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 100000 1