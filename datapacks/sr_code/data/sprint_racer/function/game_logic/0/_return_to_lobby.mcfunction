#glad I caught this here bug, wowie
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noskip2next

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/10/_initialize