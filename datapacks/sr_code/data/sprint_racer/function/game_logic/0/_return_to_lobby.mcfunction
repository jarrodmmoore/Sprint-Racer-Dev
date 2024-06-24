#glad I caught this here bug, wowie
tag @e[tag=w,type=armor_stand] add noskip2next

execute unless entity @e[tag=w,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[tag=w,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/10/_initialize