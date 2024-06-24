#keep players in the box
execute as @a at @s if entity @s[x=1581,y=76,z=365,dx=12,dy=12,dz=12] run tp @s 1210 65 406 180 0

#force creative mode
gamemode creative @a[gamemode=adventure]

bossbar set freeroam players @a

#give proper tags to players and spectators
tag @a[tag=!forcespectate,tag=!afk] add playing
team join player @a[team=!player,tag=!forcespectate,tag=!afk]
tag @a[tag=forcespectate] remove playing
team join spectator @a[team=!spectator,tag=forcespectate]
tag @a[tag=afk] remove playing
team join spectator @a[team=!spectator,tag=afk]
tag @a[x=1550,y=108,z=406,distance=..150] add lobby
execute as @a[tag=afk] at @s run function sprint_racer_language:afk_tag

scoreboard players remove @a[scores={subtitleDelay=1..}] subtitleDelay 1
tag @a[tag=noInventory] remove noInventory

scoreboard players remove @a[scores={afkTime=100..120}] afkTime 1

#heals for all
effect give @a[scores={hp=..19}] instant_health 1 10 true

#allow players to un-afk themselves
execute as @a[tag=afk,scores={moveState=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={pressJump=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={carrotInput=..9}] run function sprint_racer_language:afk_tag_remove
scoreboard players reset @a[scores={pressJump=1..}] pressJump


#jump boost and speed are functional while editing
execute as @e[tag=node,tag=jumpboost,type=marker] at @s if entity @a[gamemode=!spectator,distance=..2] run function sprint_racer:game_logic/1/node_effects/jump_boost
execute as @e[tag=node,tag=speedboost,tag=!superSpeed,type=marker] at @s run scoreboard players set @a[gamemode=!spectator,scores={speedBoost=..30,moveState=1..3},distance=..2] speedBState 3
execute as @e[tag=node,tag=speedboost,tag=superSpeed,type=marker] at @s run scoreboard players set @a[gamemode=!spectator,scores={moveState=1..3},distance=..2] speedBState 13


#make sure players have the proper inventory stuff

#exit item
tag @a[tag=hasBarrier] remove hasBarrier
tag @a[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{exit:1b}}}]}] add hasBarrier
clear @a[tag=!hasBarrier,scores={playerState=..1}] barrier
execute as @a[tag=!hasBarrier,scores={playerState=..1}] run function sprint_racer_language:_dlc_2/lobby/custom_track/back_to_menu_item

#back to menu
execute if entity @a[scores={carrotInput=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{exit:1b}}}}] run function sprint_racer:game_logic/10/back_to_menu