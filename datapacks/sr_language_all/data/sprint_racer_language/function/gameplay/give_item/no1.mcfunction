#give number of snowballs based on item luck
give @s[tag=!justOne,scores={itemLuck=..1}] minecraft:snowball[custom_name='{"translate":"sr.item.snowball","color":"red","bold":true,"italic":false}',custom_data={no1:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[tag=!justOne,scores={itemLuck=2}] minecraft:snowball[custom_name='{"translate":"sr.item.snowball","color":"red","bold":true,"italic":false}',custom_data={no1:1b,stay:1b,item:1b,normalitem:1b}] 3
give @s[tag=!justOne,scores={itemLuck=3}] minecraft:snowball[custom_name='{"translate":"sr.item.snowball","color":"red","bold":true,"italic":false}',custom_data={no1:1b,stay:1b,item:1b,normalitem:1b}] 4
give @s[tag=!justOne,scores={itemLuck=4}] minecraft:snowball[custom_name='{"translate":"sr.item.snowball","color":"red","bold":true,"italic":false}',custom_data={no1:1b,stay:1b,item:1b,normalitem:1b}] 5
give @s[tag=!justOne,scores={itemLuck=5..}] minecraft:snowball[custom_name='{"translate":"sr.item.snowball","color":"red","bold":true,"italic":false}',custom_data={no1:1b,stay:1b,item:1b,normalitem:1b}] 6

give @s[tag=justOne] minecraft:snowball[custom_name='{"translate":"sr.item.snowball","color":"red","bold":true,"italic":false}',custom_data={no1:1b,stay:1b,item:1b,normalitem:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..1}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=2}] math 3
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=3}] math 4
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 5
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 6

scoreboard players operation @s[tag=ai] aiHasItem1 += @s math
scoreboard players operation @s[tag=ai] aiHasProjectile += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne