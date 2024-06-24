#give based on item luck
give @s[tag=!justOne,scores={itemLuck=..4}] minecraft:ender_pearl[custom_name='{"translate":"sr.item.ender_pearl","color":"aqua","bold":true,"italic":false}',custom_data={no11:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[tag=!justOne,scores={itemLuck=5..}] minecraft:ender_pearl[custom_name='{"translate":"sr.item.ender_pearl","color":"aqua","bold":true,"italic":false}',custom_data={no11:1b,stay:1b,item:1b,normalitem:1b}] 2

give @s[tag=justOne] minecraft:ender_pearl[custom_name='{"translate":"sr.item.ender_pearl","color":"aqua","bold":true,"italic":false}',custom_data={no11:1b,stay:1b,item:1b,normalitem:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5}] math 3

scoreboard players operation @s[tag=ai] aiHasItem11 += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math

tag @s remove justOne