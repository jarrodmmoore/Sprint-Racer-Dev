#activator
item replace entity @s inventory.0 with minecraft:vex_spawn_egg[custom_name={translate:"sr.editor.give.activator",color:"white",bold:true,italic:false},entity_data={id:"minecraft:vex",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Activator",bold:true}}] 64

#player spawn
item replace entity @s inventory.1 with minecraft:drowned_spawn_egg[custom_name={translate:"sr.editor.give.playerstart",color:"aqua",bold:true,italic:false},entity_data={id:"minecraft:drowned",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Player Start",bold:true}}] 64

#finish line
item replace entity @s inventory.2 with minecraft:cow_spawn_egg[custom_name={translate:"sr.editor.give.finishline",color:"white",bold:true,italic:false},entity_data={id:"minecraft:cow",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Finish Line",bold:true}}] 64

#checkpoint
item replace entity @s inventory.3 with minecraft:sheep_spawn_egg[custom_name={translate:"sr.editor.give.checkpoint",color:"white",bold:true,italic:false},entity_data={id:"minecraft:sheep",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Checkpoint",bold:true}}] 64

#item block
item replace entity @s inventory.4 with minecraft:villager_spawn_egg[custom_name={translate:"sr.editor.give.itemchest",color:"gold",bold:true,italic:false},entity_data={id:"minecraft:villager",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Item Chest",bold:true}}] 64

#speed boost
item replace entity @s inventory.5 with minecraft:blaze_spawn_egg[custom_name={translate:"sr.editor.give.speedboost",color:"yellow",bold:true,italic:false},entity_data={id:"minecraft:blaze",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Speed Boost",bold:true}}] 64

#jump boost
item replace entity @s inventory.6 with minecraft:witch_spawn_egg[custom_name={translate:"sr.editor.give.jumpboost",color:"green",bold:true,italic:false},entity_data={id:"minecraft:witch",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Jump Boost",bold:true}}] 64

#resistance
item replace entity @s inventory.7 with minecraft:spider_spawn_egg[custom_name={translate:"sr.editor.give.resistance",color:"white",bold:true,italic:false},entity_data={id:"minecraft:spider",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Resistance",bold:true}}] 64

#elytra jump
item replace entity @s inventory.8 with minecraft:bat_spawn_egg[custom_name={translate:"sr.editor.give.elytrajump",color:"white",bold:true,italic:false},entity_data={id:"minecraft:bat",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Elytra Jump",bold:true}}] 64

#teleporter
item replace entity @s inventory.9 with minecraft:enderman_spawn_egg[custom_name={translate:"sr.editor.give.teleporter",color:"light_purple",bold:true,italic:false},entity_data={id:"minecraft:enderman",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Teleporter",bold:true}}] 64

#scripted sequence
item replace entity @s inventory.10 with minecraft:endermite_spawn_egg[custom_name={translate:"sr.editor.give.scriptmove",color:"light_purple",bold:true,italic:false},entity_data={id:"minecraft:endermite",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"Scripted Sequence",bold:true}}] 64

#ai breadcrumb
item replace entity @s inventory.11 with minecraft:pig_spawn_egg[custom_name={translate:"sr.editor.give.breadcrumb",color:"red",bold:true,italic:false},entity_data={id:"minecraft:pig",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["killme"],CustomName:{text:"AI breadcrumb",bold:true}}] 64


#cleanup, don't edit...
clear @s shulker_shell[custom_data~{invControl:1b}]