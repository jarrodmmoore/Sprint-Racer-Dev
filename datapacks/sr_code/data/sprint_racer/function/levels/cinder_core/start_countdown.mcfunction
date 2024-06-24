#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=75}] run fill -1047 43 -979 -1043 43 -979 barrier

execute if entity @e[tag=w,scores={gameTime=100}] run setblock -1043 43 -980 minecraft:redstone_wall_torch[facing=north]

execute if entity @e[tag=w,scores={gameTime=120}] run setblock -1045 43 -980 minecraft:redstone_wall_torch[facing=north]

execute if entity @e[tag=w,scores={gameTime=140}] run setblock -1047 43 -980 minecraft:redstone_wall_torch[facing=north]


execute if entity @e[tag=w,scores={gameTime=170}] run fill -1047 43 -979 -1043 43 -979 air
execute if entity @e[tag=w,scores={gameTime=175}] run fill -1047 43 -980 -1043 43 -980 air
