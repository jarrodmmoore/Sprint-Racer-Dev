#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#sound
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~100000 ~ 100000 .5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~100000 ~ 100000 .5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~100000 ~ 100000 .5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] as @a at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 100000 1

#custom 3,2,1,GO!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100..178}] run title @a subtitle [""]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run title @a title ["",{text:"3",bold:true,color:"yellow"},{text:".",bold:true,color:"black"},{text:".",bold:true,color:"yellow"},{text:".",bold:true,color:"black"}]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run title @a title ["",{text:"2",bold:true,color:"yellow"},{text:".",bold:true,color:"black"},{text:".",bold:true,color:"yellow"},{text:".",bold:true,color:"black"}]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run title @a title ["",{text:"1",bold:true,color:"yellow"},{text:".",bold:true,color:"black"},{text:".",bold:true,color:"yellow"},{text:".",bold:true,color:"black"}]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run title @a title ["",{text:"RUSH!",bold:true,color:"yellow"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=162}] run title @a title ["",{text:"RUSH!",bold:true,color:"gold"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=164}] run title @a title ["",{text:"RUSH!",bold:true,color:"yellow"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=166}] run title @a title ["",{text:"RUSH!",bold:true,color:"gold"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=168}] run title @a title ["",{text:"RUSH!",bold:true,color:"yellow"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=170}] run title @a title ["",{text:"RUSH!",bold:true,color:"gold"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=172}] run title @a title ["",{text:"RUSH!",bold:true,color:"yellow"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=174}] run title @a title ["",{text:"RUSH!",bold:true,color:"gold"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=176}] run title @a title ["",{text:"RUSH!",bold:true,color:"yellow"}]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=178}] run title @a title [""]
