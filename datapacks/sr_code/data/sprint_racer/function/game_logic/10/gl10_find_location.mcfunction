#keep players in the box
execute as @a at @s if entity @s[x=1581,y=76,z=365,dx=12,dy=12,dz=12] run tp @s 1210 65 406 180 0

#force creative mode
gamemode creative @a[gamemode=!spectator]

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


#actionbar x and z location
execute as @a at @s store result score @s mvmt_coord_x run data get entity @s Pos[0] 1
execute as @a at @s store result score @s mvmt_coord_y run data get entity @s Pos[1] 1
execute as @a at @s store result score @s mvmt_coord_z run data get entity @s Pos[2] 1
execute as @a at @s run function sprint_racer_language:_dlc_3/lobby/custom_track/show_coordinates



#make sure players have the proper inventory stuff

#set location (SLOT 4, structure block)
tag @e[tag=hasSBlock] remove hasSBlock
tag @a[nbt={Inventory:[{Slot:4b,id:"minecraft:structure_block",components:{"minecraft:custom_data":{setlocation:1b}}}]}] add hasSBlock
clear @a[tag=!hasSBlock] structure_block
execute unless entity @e[tag=focusT] run clear @a structure_block
execute if entity @e[tag=focusT] as @a[tag=!hasSBlock] run function sprint_racer_language:_dlc_1/lobby/custom_track_inv/set_location_item
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand structure_block[custom_data~{setlocation:1b}] run function sprint_racer:game_logic/10/controls/set_track_location


#exit item
tag @e[tag=hasExit] remove hasExit
tag @a[tag=hasBarrier] remove hasBarrier
tag @a[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{exit:1b}}}]}] add hasBarrier
clear @a[tag=!hasBarrier] barrier
function sprint_racer_language:_dlc_1/lobby/custom_track/back_to_menu_item




#back to menu
execute if entity @a[scores={carrotInput=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{exit:1b}}}}] run function sprint_racer:game_logic/10/back_to_menu