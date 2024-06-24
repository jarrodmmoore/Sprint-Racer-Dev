execute unless entity @s[tag=findLocation] unless entity @s[tag=editingTrack] run function sprint_racer:game_logic/10/gl10_menu

execute if entity @s[tag=findLocation] run function sprint_racer:game_logic/10/gl10_find_location

execute if entity @s[tag=editingTrack] run function sprint_racer:game_logic/10/gl10_edit_track

execute if entity @e[tag=w,type=armor_stand,limit=1,tag=requireAdmin,scores={gameState=1..}] run function sprint_racer:game_logic/10/spectators

#stat change requests
execute as @a unless score @s cStatRequest = @s cStatType at @s run function sprint_racer:cheats/shoes/handle_stat_request