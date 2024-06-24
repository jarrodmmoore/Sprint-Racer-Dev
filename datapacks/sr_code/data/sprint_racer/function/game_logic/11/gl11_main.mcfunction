execute unless entity @s[tag=settingTracks] run function sprint_racer:game_logic/11/gl11_menu

execute if entity @s[tag=settingTracks] run function sprint_racer:game_logic/11/gl11_set_order

execute if entity @e[tag=w,type=armor_stand,limit=1,tag=requireAdmin,scores={gameState=1..}] run function sprint_racer:game_logic/11/spectators