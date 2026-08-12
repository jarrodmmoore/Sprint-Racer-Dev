#glad I caught this here bug, wowie
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add noskip2next

function sprint_racer_language:_dlc_1/gameplay/ta_aborted
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!return2lobby,tag=!customTesting] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add noTAmessage
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!return2lobby,tag=!customTesting] as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] run function sprint_racer:game_logic/6/_initialize

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=return2lobby,tag=!customTesting] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] roundNumber 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=return2lobby,tag=!customTesting] run scoreboard players add @a maturity 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=return2lobby,tag=!customTesting] as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] run function sprint_racer:game_logic/0/_initialize

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=customTesting] run function sprint_racer:game_logic/10/_initialize