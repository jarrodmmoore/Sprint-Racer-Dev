#keep players in the box
execute as @a at @s unless entity @s[x=1583,y=65,z=425,dx=12,dy=16,dz=26] run tp @s 1585 68 440 270 -6


#listeners
execute as @a[scores={gpMenu1=1..199}] run function sprint_racer:game_logic/11/triggers/gp_menu_1
execute as @a[scores={gpMenu2=1..99}] run function sprint_racer:game_logic/11/triggers/gp_menu_2
execute as @a[scores={gpMenu2=100..199}] run function sprint_racer:game_logic/11/triggers/gp_menu_3
execute as @a[scores={gpMenu2=200..299}] run function sprint_racer:game_logic/11/triggers/gp_menu_4


#force adventure mode
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=requireAdmin] run gamemode adventure @a
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=requireAdmin] run gamemode adventure @a[tag=admin]


bossbar set freeroam players @a
effect give @a night_vision 15 1 true

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
execute as @a[tag=afk,gamemode=spectator] run function sprint_racer_language:afk_tag_remove
scoreboard players reset @a[scores={pressJump=1..}] pressJump





#make sure players have the proper inventory stuff

tag @e[tag=hasLectern] remove hasLectern
tag @a[nbt={Inventory:[{Slot:0b,id:"minecraft:lectern",components:{"minecraft:custom_data":{gpSettings:1b}}}]}] add hasLectern
clear @a[tag=!hasLectern] lectern
execute if entity @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gpNumber=1..}] as @a[gamemode=!creative,tag=!hasLectern] run function sprint_racer_language:_dlc_3/grand_prix/give_lectern
execute if entity @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gpNumber=..0}] run clear @a[gamemode=!creative,tag=hasLectern] lectern[custom_data~{gpSettings:1b}]
execute as @a[scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand lectern[custom_data~{gpSettings:1b}] run function sprint_racer:game_logic/11/lectern_track_settings

#exit item
tag @e[tag=hasExit] remove hasExit
tag @a[tag=hasBarrier] remove hasBarrier
tag @a[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{exit:1b}}}]}] add hasBarrier
clear @a[tag=!hasBarrier] barrier
function sprint_racer_language:lobby/choose_track_exit_item



#buttons (remote detection)
execute if block 1585 72 427 minecraft:stone_button[powered=true] run function sprint_racer:game_logic/11/buttons/green
execute if block 1588 72 427 minecraft:stone_button[powered=true] run function sprint_racer:game_logic/11/buttons/yellow
execute if block 1591 72 427 minecraft:stone_button[powered=true] run function sprint_racer:game_logic/11/buttons/red



#back to lobby
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{exit:1b}}}}] run function sprint_racer:game_logic/11/exit