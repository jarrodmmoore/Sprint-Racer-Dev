item replace entity @s[tag=!forcespectate] inventory.10 with minecraft:light_blue_wool[enchantments={levels:{"minecraft:lure":1},show_in_tooltip:0b},custom_name='["",{"text":"✔ ","color":"green","bold":false,"italic":false},{"text":"Play","color":"aqua","bold":true,"italic":false}]',lore=['{"text":"Click me!","color":"yellow"}'],custom_data={invControl:1b,invPlay:1b}]
item replace entity @s[tag=forcespectate] inventory.10 with minecraft:light_blue_wool[custom_name='["",{"text":"Play","color":"aqua","bold":true,"italic":false}]',lore=['{"text":"Click me!","color":"yellow"}'],custom_data={invControl:1b,invPlay:1b}]

item replace entity @s[tag=forcespectate] inventory.11 with minecraft:pink_wool[enchantments={levels:{"minecraft:lure":1},show_in_tooltip:0b},custom_name='["",{"text":"✔ ","color":"green","bold":false,"italic":false},{"text":"Spectate","color":"light_purple","bold":true,"italic":false}]',lore=['{"text":"Click me!","color":"yellow"}'],custom_data={invControl:1b,invSpectate:1b}]
item replace entity @s[tag=!forcespectate] inventory.11 with minecraft:pink_wool[custom_name='["",{"text":"Spectate","color":"light_purple","bold":true,"italic":false}]',lore=['{"text":"Click me!","color":"yellow"}'],custom_data={invControl:1b,invSpectate:1b}]


item replace entity @s[tag=timer] inventory.13 with minecraft:clock[enchantments={levels:{"minecraft:lure":1},show_in_tooltip:0b},custom_name='["",{"text":"✔ ","color":"green","bold":false,"italic":false},{"text":"Display: Timer","color":"yellow","bold":true,"italic":false}]',lore=['{"text":"Click me!","color":"yellow"}'],custom_data={invControl:1b,invTimer:1b}]
item replace entity @s[tag=!timer] inventory.13 with minecraft:clock[custom_name='["",{"text":"Display: Timer","color":"yellow","bold":true,"italic":false}]',lore=['{"text":"Click me!","color":"yellow"}'],custom_data={invControl:1b,invTimer:1b}]

item replace entity @s[tag=navigator] inventory.14 with minecraft:compass[enchantments={levels:{"minecraft:lure":1},show_in_tooltip:0b},custom_name='["",{"text":"✔ ","color":"green","bold":false,"italic":false},{"text":"Display: Navigator","color":"gray","bold":true,"italic":false}]',lore=['{"text":"Click me! (Resource pack required)","color":"yellow"}'],custom_data={invControl:1b,invNavigator:1b}]
item replace entity @s[tag=!navigator] inventory.14 with minecraft:compass[custom_name='["",{"text":"Display: Navigator","color":"gray","bold":true,"italic":false}]',lore=['{"text":"Click me! (Resource pack required)","color":"yellow"}'],custom_data={invControl:1b,invNavigator:1b}]


item replace entity @s[tag=minChat] inventory.16 with minecraft:dark_oak_sign[enchantments={levels:{"minecraft:lure":1},show_in_tooltip:0b},custom_name='["",{"text":"Minimal Chat Mode: ON","color":"gold","bold":true,"italic":false}]',lore=['{"text":"Click to toggle!","color":"yellow"}'],custom_data={invControl:1b,invSign:1b}]
item replace entity @s[tag=!minChat] inventory.16 with minecraft:pale_oak_sign[custom_name='["",{"text":"Minimal Chat Mode: OFF","color":"gold","bold":true,"italic":false}]',lore=['{"text":"Click to toggle!","color":"yellow"}'],custom_data={invControl:1b,invSign:1b}]



# sample character and nbt stuff...
# ✔
# item replace entity @s[tag=forcespectate] inventory.10 with minecraft:light_blue_wool[custom_name='["",{"text":"Play","color":"aqua","bold":"true","italic":"false"}]',lore=['{"text":"Click me!","color":"yellow"}'],custom_data={invControl:1b,invPlay:1b}]