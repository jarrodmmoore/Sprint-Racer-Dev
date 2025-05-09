#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#Starting Line Lights
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 8889 123 -9364 redstone_block replace

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 8889 123 -9369 redstone_block replace

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 8889 123 -9374 redstone_block replace

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=239}] run setblock 8889 123 -9364 air replace

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=239}] run setblock 8889 123 -9369 air replace

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=239}] run setblock 8889 123 -9374 air replace


#Create the road connecting the starting drum and track
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=1}] run function mkmc:symphony_city/create_bridge

#Destroy road connecting the starting drum and track
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=239}] run function mkmc:symphony_city/destroy_bridge