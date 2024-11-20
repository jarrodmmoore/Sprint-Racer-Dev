execute as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 100000 .5
function sprint_racer_language:lobby/reset_lobby
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove choosingTrack
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noskip2next
function sprint_racer:game_logic/0/_initialize