#gold speed boost
execute as @e[tag=node,tag=speedboost,tag=!superSpeed,type=marker,scores={nodeState=1..}] at @s run scoreboard players set @e[tag=activeplayer,scores={speedBoost=..30,moveState=1..3},distance=..2] speedBState 3

#diamond speed boost (takes priority over gold)
execute as @e[tag=node,tag=speedboost,tag=superSpeed,type=marker,scores={nodeState=1..}] at @s run scoreboard players set @e[tag=activeplayer,scores={moveState=1..3},distance=..2] speedBState 13

#resistance (takes priority over resistance item effect)
execute as @e[tag=node,tag=resistance,type=marker,scores={nodeState=1..}] at @s if entity @e[tag=playing,gamemode=!spectator,distance=..2] run function sprint_racer:game_logic/1/node_effects/resistance

#jump boost
execute as @e[tag=node,tag=jumpboost,type=marker,scores={nodeState=1..}] at @s if entity @e[tag=playing,gamemode=!spectator,distance=..2] run function sprint_racer:game_logic/1/node_effects/jump_boost
execute as @e[tag=node,tag=jumpboost,type=marker,scores={nodeState=1..}] at @s if entity @e[tag=activeplayer,tag=ai,distance=..2] run function sprint_racer:game_logic/1/node_effects/jump_boost_ai/_index

#elytra
execute as @e[tag=node,tag=elytrajump,type=marker,scores={nodeState=1..}] at @s if entity @e[tag=activeplayer,scores={elytraTimer=..0},distance=..2] run function sprint_racer:game_logic/1/node_effects/elytra