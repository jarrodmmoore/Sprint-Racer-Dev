#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

bossbar set minecraft:readyprogress players

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=0}] run fill 1592 153 2946 1597 158 2946 minecraft:magenta_concrete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=0}] run fill 1592 156 2946 1594 158 2946 minecraft:black_concrete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=0}] run fill 1595 153 2946 1597 155 2946 minecraft:black_concrete

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=200}] run fill 1592 158 2946 1597 158 2946 minecraft:air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=202}] run fill 1592 157 2946 1597 157 2946 minecraft:air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=204}] run fill 1592 156 2946 1597 156 2946 minecraft:air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=206}] run fill 1592 155 2946 1597 155 2946 minecraft:air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=208}] run fill 1592 154 2946 1597 154 2946 minecraft:air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=210}] run fill 1592 153 2946 1597 153 2946 minecraft:air

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=210}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noskip2next


#check if we need to make changes to accomodate time attack or modified lap counts
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=0,lap=2..}] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] run function sprint_racer:levels/cotton_void/added_laps