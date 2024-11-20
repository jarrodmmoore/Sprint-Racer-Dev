scoreboard players add @s gameTime 1

##########
#reload custom track selector if something was modified in the custom track manager
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=wmCustomReload] if block 2480 98 266 air if block 2485 106 269 barrier if entity @e[tag=wmCustomStand] run function sprint_racer:game_logic/0/worldmap_custom_reload

#worldmap stuff for players within a certain coordinate area
execute as @a[scores={coord_x=23400000..26040000,coord_z=-270000..5450000}] at @s run function sprint_racer:game_logic/5/track_select

#gates and quick select menu
function sprint_racer:worldmap/misc_worldmap_stuff
##########

#night vision for players that are on tracks that need it
effect give @a[tag=fr_nightvision] night_vision 20 4 true

#global timer
execute if entity @s[scores={gameTime=10..}] run function sprint_racer:game_logic/5/global_timer

#actionbar display
execute if entity @s[scores={gameTime=10..}] run function sprint_racer_language:_dlc_1/gameplay/actionbar_display_fr

#stat change requests
execute as @a unless score @s cStatRequest = @s cStatType at @s run function sprint_racer:cheats/shoes/handle_stat_request

#item stuff
execute if entity @s[tag=optItems,scores={oTimer=0,currentTimeMsec=0,gameTime=10..}] run function sprint_racer:game_logic/5/item_stuff
execute if entity @s[tag=!optItems,scores={oTimer=0,currentTimeMsec=0,gameTime=10..}] run function sprint_racer:items/container_check_itemless
function sprint_racer:items/container_tick

#everyone sees the boosbar!
bossbar set freeroam players @a

#node loading stuff, staggered a bit for performance concerns
#unlike other gamemodes, loading is done by players instead than activators
scoreboard players add @s nodeTimeCycle 1
scoreboard players set @s[scores={nodeTimeCycle=21..}] nodeTimeCycle 1
execute if entity @s[scores={nodeTimeCycle=1}] as @a at @s run scoreboard players set @e[tag=node,distance=..50] nodeState 1

#give proper tags to players and spectators
tag @a[tag=!forcespectate,tag=!afk] add playing
team join player @a[team=!player,tag=!forcespectate,tag=!afk]
tag @a[tag=forcespectate] remove playing
team join spectator @a[team=!spectator,tag=forcespectate]
tag @a[tag=afk] remove playing
team join spectator @a[team=!spectator,tag=afk]
tag @a[x=1550,y=108,z=406,distance=..150] add lobby
execute as @a[tag=afk] at @s run function sprint_racer_language:afk_tag

#allow players to un-afk themselves
execute as @a[tag=afk,scores={moveState=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={pressJump=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={carrotInput=..9}] run function sprint_racer_language:afk_tag_remove
scoreboard players reset @a[scores={pressJump=1..}] pressJump


#set spawnpoint when near checkpoints
execute as @a at @s if entity @e[tag=node,tag=checkpoint,distance=..5] if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air run function sprint_racer:game_logic/5/set_spawnpoint

#potion effect nodes
function sprint_racer:game_logic/1/node_effects/node_effects_main

#repeat some stuff for halftick mode
execute if entity @s[tag=halftick,scores={gameState=5}] run function sprint_racer:game_logic/5/gl5_main_echo




#warp to track select when warp is used
execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{trackSelectFR:1b}] at @s run function sprint_racer:game_logic/5/warp_to_track_select

#give warp to track select item
tag @a[tag=hasWarpFR] remove hasWarpFR
tag @a[gamemode=!creative,nbt={Inventory:[{Slot:7b,id:"minecraft:flint",components:{"minecraft:custom_data":{trackSelectFR:1b}}}]}] add hasWarpFR
clear @a[gamemode=!creative,tag=!hasWarpFR] flint[custom_data~{trackSelectFR:1b}]
execute as @a[gamemode=!creative,tag=!hasWarpFR] run item replace entity @s hotbar.7 with minecraft:flint[custom_name='{"translate":"sr.game.free_roam_track_select","bold":true,"italic":false,"color":"aqua"}',custom_data={trackSelectFR:1b,rightclick:1b}] 1



#end free roam when barrier is right-clicked
execute as @a[scores={carrotInput=..999,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{EndFR:1b}] at @s run function sprint_racer:game_logic/5/end_fr

#give end free roam item
tag @a[tag=hasEndFR] remove hasEndFR
tag @a[gamemode=!creative,nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{EndFR:1b}}}]}] add hasEndFR
clear @a[gamemode=!creative,tag=!hasEndFR] barrier
execute as @a[gamemode=!creative,tag=!hasEndFR] run function sprint_racer_language:_dlc_1/gameplay/give_end_fr