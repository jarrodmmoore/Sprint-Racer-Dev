#players are shown wool
item replace entity @s[gamemode=creative,tag=!returnAdv,tag=!returnAdv2,tag=!restricted,scores={playerState=..1}] hotbar.0 with minecraft:gray_wool[custom_name='["",{"keybind":"key.drop","color":"yellow","bold":true,"italic":false},{"translate":"sr.editor.toggle","color":"dark_gray","bold":true,"italic":false}]'] 1
item replace entity @s[gamemode=creative,tag=!returnAdv,tag=!returnAdv2,tag=!restricted,scores={playerState=3..}] hotbar.0 with minecraft:gray_wool[custom_name='["",{"keybind":"key.drop","color":"yellow","bold":true,"italic":false},{"translate":"sr.editor.toggle","color":"dark_gray","bold":true,"italic":false}]'] 1
item replace entity @s[gamemode=creative,tag=!returnAdv,tag=!returnAdv2,tag=!restricted,scores={playerState=2}] hotbar.0 with minecraft:lime_wool[custom_name='["",{"keybind":"key.drop","color":"yellow","bold":true,"italic":false},{"translate":"sr.editor.toggle","color":"green","bold":true,"italic":false}]'] 1

#drop gray wool to switch to editor mode
execute if entity @s[scores={dropGrayWool=1..}] run function sprint_racer:admin_enter_editor

#drop lime wool to switch out of editor mode
execute if entity @s[scores={dropLimeWool=1..}] run function sprint_racer:admin_leave_editor