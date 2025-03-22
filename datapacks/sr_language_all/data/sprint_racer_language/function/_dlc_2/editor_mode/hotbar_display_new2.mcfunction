#SLOT 0
#don't put anything here! already in use for creative mode players.

#SLOT 1

#SLOT 2

#SLOT 3

#SLOT 4
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,scores={playerState=2}] hotbar.4 with minecraft:creeper_spawn_egg[custom_name={translate:"sr.editor.hotbar.eraser",color:"green",bold:true,italic:false},entity_data={id:"minecraft:creeper",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"BOOM",bold:true}}] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.4 with minecraft:creeper_spawn_egg[custom_name=["",{translate:"sr.editor.hotbar.eraser",color:"green",bold:true,italic:false},{translate:"sr.editor.hotbar.erase_all_selected_nodes",color:"white",bold:true,italic:false}],entity_data={id:"minecraft:creeper",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"BOOM",bold:true}}] 1

#SLOT 5
item replace entity @s[gamemode=creative,tag=!restricted,scores={playerState=2}] hotbar.5 with minecraft:snowball[custom_name=["",{keybind:"key.use",color:"yellow",bold:true,italic:false},{translate:"sr.editor.hotbar.select_nearest_node",color:"white",bold:true,italic:false}]] 1

#SLOT 6
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=!nearChest,scores={playerState=2}] hotbar.6 with minecraft:coal[custom_name=["",{translate:"sr.editor.hotbar.reserved",color:"dark_gray",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=nearChest,scores={playerState=2}] hotbar.6 with minecraft:orange_dye[custom_name=["",{keybind:"key.drop",color:"yellow",bold:true,italic:false},{translate:"sr.editor.hotbar.edit_itemchest",color:"gold",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.6 with minecraft:dispenser[custom_name=["",{keybind:"key.drop",color:"yellow",bold:true,italic:false},{translate:"sr.editor.hotbar.choose_face_direction",color:"gray",bold:true,italic:false}]] 1

#SLOT 7
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=!nearCheck,scores={playerState=2}] hotbar.7 with minecraft:coal[custom_name=["",{translate:"sr.editor.hotbar.reserved",color:"dark_gray",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=nearCheck,scores={playerState=2}] hotbar.7 with minecraft:white_dye[custom_name=["",{keybind:"key.drop",color:"yellow",bold:true,italic:false},{translate:"sr.editor.hotbar.edit_checkpoint",color:"white",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.7 with minecraft:ender_pearl[custom_name=["",{keybind:"key.use",color:"yellow",bold:true,italic:false},{translate:"sr.editor.hotbar.selected_nodes_face_player",color:"dark_aqua",bold:true,italic:false}]] 1

#SLOT 8
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=!nearAIBC,scores={playerState=2}] hotbar.8 with minecraft:coal[custom_name=["",{translate:"sr.editor.hotbar.reserved",color:"dark_gray",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=nearAIBC,scores={playerState=2}] hotbar.8 with minecraft:red_dye[custom_name=["",{keybind:"key.drop",color:"yellow",bold:true,italic:false},{translate:"sr.editor.hotbar.edit_breadcrumb",color:"red",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.8 with minecraft:barrier[custom_name=["",{keybind:"key.drop",color:"yellow",bold:true,italic:false},{translate:"sr.editor.hotbar.cancel_selection",color:"red",bold:true,italic:false}]] 1