tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.game.track_failed_to_load","color":"red","bold":true}]
tellraw @a ["",{"translate":"sr.game.players_returned_to_lobby","color":"white"}]
tellraw @a ["",{"text":" "}]

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5

#glad I caught this here bug, wowie
tag @e[tag=w,type=armor_stand] add noskip2next
tag @e[tag=w,tag=grandprix] add gp_no_skip_1

execute unless entity @e[tag=w,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[tag=w,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/10/_initialize