#re-initialize if players abandoned
execute if entity @a unless entity @a[tag=lobby] run function sprint_racer:game_logic/0/_initialize

#get rid of team request tags when teams are off
execute if entity @s[tag=!teamplay] run function sprint_racer:game_logic/0/clear_team_requests

#stat change requests
execute as @a unless score @s cStatRequest = @s cStatType at @s run function sprint_racer:cheats/shoes/handle_stat_request

#give proper tags to players and spectators
tag @a[tag=!forcespectate,tag=!afk] add playing
team join player @a[team=!player,tag=!forcespectate,tag=!afk,tag=!requestOrange,tag=!requestCyan]
team join playerOrange @a[team=!playerOrange,tag=!forcespectate,tag=!afk,tag=requestOrange,tag=!requestCyan]
team join playerCyan @a[team=!playerCyan,tag=!forcespectate,tag=!afk,tag=!requestOrange,tag=requestCyan]
tag @a[tag=forcespectate] remove playing
team join spectator @a[team=!spectator,tag=forcespectate]
tag @a[tag=afk] remove playing
team join spectator @a[team=!spectator,tag=afk]
tag @a[x=1596,y=108,z=406,distance=..150] add lobby
execute as @a[tag=afk] at @s run function sprint_racer_language:afk_tag

scoreboard players remove @a[scores={subtitleDelay=1..}] subtitleDelay 1
tag @a[tag=noInventory] remove noInventory

#no music playing? start a new music track
execute unless entity @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=currentBGM] run function sprint_racer:game_logic/0/restart_music

#fix a weird bug
execute as @a[gamemode=spectator,tag=eliminated] run scoreboard players set @s join 1

#heals for all
execute as @a if score @s hp < @s cStatHP run effect give @s instant_health 1 10 true

#item stuff
execute if entity @s[tag=optNoItems] run kill @e[tag=itemcontainer]
execute if entity @s[tag=optNoItems] run scoreboard players set @e[tag=node,tag=itemchest,scores={nodeState=1..}] itemBlockState 5
execute if entity @s[tag=optItems,scores={itemBlockState=30}] run function sprint_racer:game_logic/0/item_stuff
function sprint_racer:items/container_tick_lobby

#talk to villagers for tips
execute as @a[scores={villagerTalk=0..}] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/villager_talk

#don't afk players who are reading...
execute as @a[tag=playing,scores={afkTime=500..599}] if items entity @s weapon.mainhand written_book run scoreboard players remove @s afkTime 2

#allow players to un-afk themselves
execute as @a[tag=afk,scores={moveState=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={pressJump=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={carrotInput=..9}] run function sprint_racer_language:afk_tag_remove
scoreboard players reset @a[scores={pressJump=1..}] pressJump

#speedometer display when both enabled and active player count is 1
execute if entity @s[scores={playerCount=1}] run tag @s add speedo
execute if entity @s[scores={playerCount=2..}] run tag @s remove speedo
execute if entity @s[scores={playerCount=..0}] run bossbar set minecraft:speedo players
execute if entity @s[scores={playerCount=2..}] run bossbar set minecraft:speedo players

#misc lobby stuff
function sprint_racer:game_logic/0/misc_lobby_happenings/_main


#actionbar display
function sprint_racer_language:lobby/actionbar_display_lobby

#give tips on how to vote and declare self ready
tag @a[tag=got_tips] remove got_tips
execute as @a[tag=playing,scores={actionbarState=1},limit=4,sort=random] run function sprint_racer:game_logic/0/hotbar_tips
execute as @a[tag=!got_tips,scores={actionbarState=1}] run function sprint_racer:game_logic/0/hotbar_tips_null_only

#give books detailing how to play
tag @a[tag=hasBooks] remove hasBooks
execute as @a[gamemode=adventure] if items entity @s hotbar.6 written_book[custom_data~{guidebook1:1b}] if items entity @s hotbar.7 written_book[custom_data~{guidebook2:1b}] if items entity @s hotbar.8 written_book[custom_data~{guidebook3:1b}] run tag @s add hasBooks
clear @a[tag=!hasBooks] written_book
execute unless entity @s[tag=choosingTrack] as @a[gamemode=adventure,tag=!hasBooks,scores={hp=1..}] unless items entity @s hotbar.0 filled_map[custom_data~{wmPreview:1b}] run function sprint_racer_language:lobby/guide_books

#give ready-up item
tag @a[tag=hasRU] remove hasRU
execute as @a[tag=playing] if items entity @s hotbar.4 *[custom_data~{readyup:1b}] run tag @s add hasRU
clear @a[tag=!hasRU] red_concrete
clear @a[tag=!hasRU] lime_concrete
function sprint_racer_language:lobby/ready_up_item

#spectators and AFK players see a different icon that is not used
tag @a[tag=hasBLOCK] remove hasBLOCK
execute as @a[tag=!playing] if items entity @s hotbar.4 *[custom_data~{inform:1b}] run tag @s add hasBLOCK
clear @a[tag=!hasBLOCK] gray_stained_glass
clear @a[tag=!hasBLOCK] pink_stained_glass
function sprint_racer_language:lobby/inform_item

#right-click concrete to toggle ready
execute as @a[tag=playing,tag=!readyup,scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{readyup:1b}] at @s run function sprint_racer:game_logic/0/self_ready
execute as @a[tag=playing,tag=readyup,scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{readyup:1b}] at @s run function sprint_racer:game_logic/0/self_not_ready
execute as @a[tag=!playing,scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{inform:1b,pink:1b}] at @s run function sprint_racer_language:lobby/inform_spectator
#execute as @a[tag=!playing,scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand *[custom_data~{inform:1b,gray:1b}] at @s run function sprint_racer_language:lobby/inform_afk

#######################
#DETERMINE IF PLAYERS ARE READY OR NOT
#number of ready players required to start is the total divided by 2
#calculate required players
scoreboard players operation @s readyDummy = @s playerCount
scoreboard players set @s math 2
scoreboard players operation @s readyDummy /= @s math
scoreboard players operation @s readyRequired = @s readyDummy
scoreboard players add @s readyRequired 1
scoreboard players set @s[scores={readyRequired=..0}] readyRequired 1

#calculate ready players
scoreboard players set @s readyDummy 0
execute as @a[tag=playing,tag=readyup] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyDummy 1
scoreboard players operation @s readyCount = @s readyDummy

#take (ready players) - (required ready players)
#if result is 0 or greater, get the lobby enters into "ready" mode and track is selected
scoreboard players operation @s readyDummy -= @s readyRequired
execute if entity @s[scores={readyDummy=0..,readyState=..0}] run function sprint_racer:game_logic/0/set_mode_ready
execute if entity @s[scores={readyDummy=..-1,readyState=1..}] run function sprint_racer:game_logic/0/set_mode_not_ready
#######################


#choose between "ready" menu logic and "not ready" menu logic
execute if entity @s[scores={readyState=..0}] run function sprint_racer:game_logic/0/gl0_main_not_ready
execute if entity @s[scores={readyState=1..}] run function sprint_racer:game_logic/0/gl0_main_ready


#super secret fun land
execute if entity @a[scores={coord_y=..400000}] run function sprint_racer:game_logic/0/misc_lobby_happenings/secret_lobby


#keep players from escaping the lobby
execute unless entity @s[tag=choosingTrack] as @a[gamemode=adventure] at @s if entity @s[scores={elytraTimer=..0,coord_y=400000..740000}] run function sprint_racer:game_logic/0/goto_spawn
execute unless entity @s[tag=choosingTrack] as @a[gamemode=adventure] at @s if block ~ 0 ~ black_wool run function sprint_racer:game_logic/0/goto_spawn
execute unless entity @s[tag=choosingTrack] as @a[gamemode=adventure] at @s if block ~ 0 ~ red_wool if entity @s[nbt={OnGround:1b}] run function sprint_racer:game_logic/0/goto_spawn