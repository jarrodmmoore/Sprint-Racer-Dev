#give based on item luck
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=..4}] minecraft:gold_ingot[custom_name='{"translate":"sr.item.speed_boost","color":"aqua","bold":true,"italic":false}',custom_data={no10:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=5}] minecraft:gold_ingot[custom_name='{"translate":"sr.item.speed_boost","color":"aqua","bold":true,"italic":false}',custom_data={no10:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 2
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=6..}] minecraft:gold_ingot[custom_name='{"translate":"sr.item.speed_boost","color":"aqua","bold":true,"italic":false}',custom_data={no10:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 3

give @s[tag=justOne] minecraft:gold_ingot[custom_name='{"translate":"sr.item.speed_boost","color":"aqua","bold":true,"italic":false}',custom_data={no10:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1
give @s[tag=capsuleCollect] minecraft:gold_ingot[custom_name='{"translate":"sr.item.speed_boost","color":"aqua","bold":true,"italic":false}',custom_data={no10:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=capsuleCollect] math 1
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=..4}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=5}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=6..}] math 3

scoreboard players operation @s[tag=ai] aiHasItem10 += @s math
scoreboard players operation @s[tag=ai] aiHasSBoost += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne