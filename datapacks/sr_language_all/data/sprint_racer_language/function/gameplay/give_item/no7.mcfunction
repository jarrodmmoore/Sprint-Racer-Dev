#give more with high item luck
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=..3}] minecraft:iron_ingot[custom_name='{"translate":"sr.item.resistance","color":"yellow","bold":true,"italic":false}',custom_data={no7:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=4..}] minecraft:iron_ingot[custom_name='{"translate":"sr.item.resistance","color":"yellow","bold":true,"italic":false}',custom_data={no7:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 2

give @s[tag=justOne] minecraft:iron_ingot[custom_name='{"translate":"sr.item.resistance","color":"yellow","bold":true,"italic":false}',custom_data={no7:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1
give @s[tag=capsuleCollect] minecraft:iron_ingot[custom_name='{"translate":"sr.item.resistance","color":"yellow","bold":true,"italic":false}',custom_data={no7:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=capsuleCollect] math 1
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=4..}] math 2

scoreboard players operation @s[tag=ai] aiHasItem7 += @s math
scoreboard players operation @s[tag=ai] aiHasDefense += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math

tag @s remove justOne