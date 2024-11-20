execute unless entity @s[tag=settingTracks] run function sprint_racer:game_logic/11/gl11_menu

execute if entity @s[tag=settingTracks] run function sprint_racer:game_logic/11/gl11_set_order

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=requireAdmin,scores={gameState=1..}] run function sprint_racer:game_logic/11/spectators