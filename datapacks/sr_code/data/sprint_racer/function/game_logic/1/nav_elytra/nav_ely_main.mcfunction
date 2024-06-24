scoreboard players set @s navDirection 0

scoreboard players set @s navDirection 0
scoreboard players set @s navDirection2 -1
scoreboard players set @s offCourseBuffer 0
scoreboard players set @s wrongWayBuffer 0

execute if score @s check >= @e[tag=w,limit=1,type=armor_stand] check run tag @s add point2finish

execute if entity @s[tag=!point2finish,scores={check=..0}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=1}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=1}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=1}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=2}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=2}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=2}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=3}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=3}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=3}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=4}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=4}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=4}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=5}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=5}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=5}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=6}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=6}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=6}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=7}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=7}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=7}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=8}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=8}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=8}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=9}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=9}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=9}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=10}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=10}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node

execute if entity @s[tag=!point2finish,scores={check=10}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=11}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=11}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=11}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=12}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=12}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=12}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=13}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=13}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=13}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=14}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=14}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=14}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=15}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=15}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=15}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=16}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=16}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=16}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=17}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=17}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=17}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=18}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=18}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=18}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=19}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=19}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=19}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=20}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=20}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node

execute if entity @s[tag=!point2finish,scores={check=20}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=21}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=21}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=21}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=22}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=22}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=22}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=23}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=23}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=23}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=24}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=24}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node
execute if entity @s[tag=!point2finish,scores={check=24}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=25}] facing entity @e[limit=1,sort=nearest,tag=checkpoint,scores={nodeState=1..,check=25}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node

execute if entity @s[tag=point2finish] if entity @e[tag=finishline,scores={nodeState=1..}] facing entity @e[limit=1,sort=nearest,tag=finishline,scores={nodeState=1..}] eyes run function sprint_racer:game_logic/1/nav_elytra/point_to_node

execute as @s store result score #ne_rot_player value run data get entity @s Rotation[0] 1
scoreboard players operation #ne_rot_compare value = #ne_rot_check value
scoreboard players operation #ne_rot_compare value -= #ne_rot_player value

#debug
#tellraw @s ["",{"text":" "}]
#tellraw @a ["",{"text":"ne_rot_check="},{"score":{"name":"#ne_rot_check","objective":"value"}}]
#tellraw @a ["",{"text":"ne_rot_player="},{"score":{"name":"#ne_rot_player","objective":"value"}}]
#tellraw @a ["",{"text":"ne_rot_compare="},{"score":{"name":"#ne_rot_compare","objective":"value"}}]

function sprint_racer:game_logic/1/nav_elytra/interpret_nav
execute unless entity @e[limit=1,distance=..5,sort=nearest,tag=n_e_look,type=area_effect_cloud] run scoreboard players set @s navDirection2 -1

kill @e[limit=1,distance=..5,sort=nearest,tag=n_e_look,type=area_effect_cloud]
tag @s remove point2finish

function sprint_racer_language:_dlc_4/gameplay/navigation_arrow_elytra