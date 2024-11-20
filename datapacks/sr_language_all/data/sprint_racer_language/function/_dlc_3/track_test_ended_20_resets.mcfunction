tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.track_test_aborted_20_resets","color":"red","bold":true}]
tellraw @a ["",{"translate":"sr.lobby.black_wool_y0_causes_reset_1","color":"white"},{"translate":"block.minecraft.black_wool","color":"#555555"},{"translate":"sr.lobby.black_wool_y0_causes_reset_2","color":"white"}]
tellraw @a ["",{"translate":"sr.lobby.for_info_read_help_section","color":"white"},{"text":"Navigation direction map","color":"dark_aqua"},{"text":".","color":"white"}]
tellraw @a ["",{"text":" "}]

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5

#glad I caught this here bug, wowie
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noskip2next
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=grandprix] add gp_no_skip_1

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/0/_initialize
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting] run function sprint_racer:game_logic/10/_initialize