give @s minecraft:blaze_rod[enchantments={levels:{"minecraft:lure":1},show_in_tooltip:0b},custom_name='["",{"text":"↑ ","color":"dark_purple","bold":true,"italic":false},{"translate":"sr.item_elite.storm","color":"light_purple","bold":true,"italic":false}]',custom_data={elite20:1b,stay:1b,item:1b,eliteitem:1b,rightclick:1b}] 1

#don't give people any more of these for 90 seconds.
scoreboard players set #lightningCooldown value 1800

scoreboard players add @s[tag=ai] aiHasItem40 1
scoreboard players add @s[tag=ai] aiHasGlobal 1
scoreboard players add @s[tag=ai] aiHasElite 1