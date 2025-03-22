#SLOT 0
#don't put anything here! already in use for creative mode players.

#SLOT 1

#SLOT 2

#SLOT 3

#SLOT 4
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,scores={playerState=2}] hotbar.4 with minecraft:creeper_spawn_egg[custom_name={text:"Eraser",color:"green",bold:true,italic:false},entity_data={id:"minecraft:creeper",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"BOOM",bold:true}}] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.4 with minecraft:creeper_spawn_egg[custom_name=["",{text:"Eraser ",color:"green",bold:true,italic:false},{text:"(erase all selected nodes)",color:"white",bold:true,italic:false}],entity_data={id:"minecraft:creeper",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"BOOM",bold:true}}] 1

#SLOT 5
item replace entity @s[gamemode=creative,tag=!restricted,scores={playerState=2}] hotbar.5 with minecraft:snowball[custom_name=["",{keybind:"key.use",color:"yellow",bold:true,italic:false},{text:" >> Select nearest node",color:"white",bold:true,italic:false}]] 1

#SLOT 6
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,scores={playerState=2}] hotbar.6 with minecraft:coal[custom_name=["",{text:"RESERVED",color:"dark_gray",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.6 with minecraft:dispenser[custom_name=["",{keybind:"key.drop",color:"yellow",bold:true,italic:false},{text:" >> Choose Face Direction",color:"gray",bold:true,italic:false}]] 1

#SLOT 7
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,scores={playerState=2}] hotbar.7 with minecraft:coal[custom_name=["",{text:"RESERVED",color:"dark_gray",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.7 with minecraft:ender_pearl[custom_name=["",{keybind:"key.use",color:"yellow",bold:true,italic:false},{text:" >> Selected Nodes: Look at me!",color:"dark_aqua",bold:true,italic:false}]] 1

#SLOT 8
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=!nearAIBC,scores={playerState=2}] hotbar.8 with minecraft:coal[custom_name=["",{text:"RESERVED",color:"dark_gray",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=!selecting,tag=nearAIBC,scores={playerState=2}] hotbar.8 with minecraft:red_dye[custom_name=["",{keybind:"key.drop",color:"yellow",bold:true,italic:false},{text:" >> Edit Breadcrumb",color:"red",bold:true,italic:false}]] 1
item replace entity @s[gamemode=creative,tag=!restricted,tag=selecting,scores={playerState=2}] hotbar.8 with minecraft:barrier[custom_name=["",{keybind:"key.drop",color:"yellow",bold:true,italic:false},{text:" >> Cancel Selection",color:"red",bold:true,italic:false}]] 1