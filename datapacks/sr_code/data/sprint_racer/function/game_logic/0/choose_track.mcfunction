execute if entity @s[tag=!choosingTrack] run scoreboard players set @a inputCooldown 150
tag @s[tag=!choosingTrack] add choosingTrack

#reload custom track selector if something was modified in the custom track manager
execute if entity @s[tag=wmCustomReload] if loaded 2480 98 266 run function sprint_racer:game_logic/0/worldmap_custom_reload

#night vision for all
effect give @a night_vision 15 5 true

#go fast
effect give @a[scores={coord_y=..960000}] speed 1 20 true

function sprint_racer_language:lobby/choose_track_text
bossbar set minecraft:menutimer color yellow
bossbar set minecraft:menutimer style progress
bossbar set minecraft:menutimer value 1000

tag @e[tag=hasExit] remove hasExit

#make sure players have the proper inventory stuff
tag @a[tag=playerVote1] remove playerVote1
tag @a[tag=hasBarrier] remove hasBarrier
tag @a[nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",components:{"minecraft:custom_data":{exit:1b}}}]}] add hasBarrier
clear @a[tag=!hasBarrier,tag=playing] barrier
execute if entity @e[type=armor_stand,tag=trackminimap] run function sprint_racer_language:lobby/choose_track_exit_item

execute as @a[sort=random,limit=5,gamemode=adventure] at @s run function sprint_racer:game_logic/0/find_nearest_track

#choose track
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] at @s run function sprint_racer:game_logic/0/worldmap_choose_try


#gates and quick select menu
function sprint_racer:worldmap/misc_worldmap_stuff

#back to lobby
execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand barrier[custom_data~{exit:1b}] at @s run function sprint_racer:game_logic/0/choose_track_return_to_lobby_try