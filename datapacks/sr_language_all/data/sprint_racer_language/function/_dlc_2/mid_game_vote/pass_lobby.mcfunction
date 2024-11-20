tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.mid_game_vote.returned_to_lobby","color":"yellow","bold":true}]
tellraw @a ["",{"translate":"sr.mid_game_vote.vote_was_passed","color":"yellow","italic":true}]
tellraw @a ["",{"text":" "}]

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5

#glad I caught this here bug, wowie
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noskip2next
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] add gp_no_skip_1

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/10/_initialize