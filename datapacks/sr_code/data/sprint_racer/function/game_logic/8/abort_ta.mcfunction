#glad I caught this here bug, wowie
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noskip2next

function sprint_racer_language:_dlc_1/gameplay/ta_aborted
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!return2lobby,tag=!customTesting] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noTAmessage
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!return2lobby,tag=!customTesting] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:game_logic/6/_initialize

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=return2lobby,tag=!customTesting] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=return2lobby,tag=!customTesting] run scoreboard players add @a maturity 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=return2lobby,tag=!customTesting] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:game_logic/0/_initialize

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=customTesting] run function sprint_racer:game_logic/10/_initialize