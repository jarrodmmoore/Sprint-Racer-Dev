#this function is unique in that it does not require the lobby nodes to be "activated" in order to use them

#gold speed boost
execute as @e[tag=node,type=marker,tag=speedboost,tag=!superSpeed] at @s run scoreboard players set @a[gamemode=!spectator,scores={speedBoost=..30,moveState=1..3},distance=..2] speedBState 3

#diamond speed boost (takes priority over gold)
execute as @e[tag=node,type=marker,tag=speedboost,tag=superSpeed] at @s run scoreboard players set @a[gamemode=!spectator,scores={moveState=1..3},distance=..2] speedBState 13

#resistance (takes priority over resistance item effect)
execute as @e[tag=node,type=marker,tag=resistance] at @s if entity @a[gamemode=!spectator,distance=..2] run function sprint_racer:game_logic/0/node_effects/resistance

#jump boost
execute as @e[tag=node,type=marker,tag=jumpboost] at @s if entity @a[gamemode=!spectator,distance=..2] run function sprint_racer:game_logic/0/node_effects/jump_boost

#elytra
execute as @e[tag=node,type=marker,tag=elytrajump] at @s if entity @a[gamemode=!spectator,scores={elytraTimer=..0},distance=..2] run function sprint_racer:game_logic/0/node_effects/elytra