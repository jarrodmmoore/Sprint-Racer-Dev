#give more based on item luck
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=..1}] minecraft:bricks[item_model="sr/item/chicken_mine",custom_name='{"translate":"sr.item.chicken_mine","color":"green","bold":true,"italic":false}',custom_data={no15:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=2}] minecraft:bricks[item_model="sr/item/chicken_mine",custom_name='{"translate":"sr.item.chicken_mine","color":"green","bold":true,"italic":false}',custom_data={no15:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 2
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=3}] minecraft:bricks[item_model="sr/item/chicken_mine",custom_name='{"translate":"sr.item.chicken_mine","color":"green","bold":true,"italic":false}',custom_data={no15:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 3
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=4}] minecraft:bricks[item_model="sr/item/chicken_mine",custom_name='{"translate":"sr.item.chicken_mine","color":"green","bold":true,"italic":false}',custom_data={no15:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 4
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=5..}] minecraft:bricks[item_model="sr/item/chicken_mine",custom_name='{"translate":"sr.item.chicken_mine","color":"green","bold":true,"italic":false}',custom_data={no15:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 5

give @s[tag=justOne] minecraft:bricks[item_model="sr/item/chicken_mine",custom_name='{"translate":"sr.item.chicken_mine","color":"green","bold":true,"italic":false}',custom_data={no15:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1
give @s[tag=capsuleCollect] minecraft:bricks[item_model="sr/item/chicken_mine",custom_name='{"translate":"sr.item.chicken_mine","color":"green","bold":true,"italic":false}',custom_data={no15:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 2


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=capsuleCollect] math 1
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=..1}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=2}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=3}] math 3
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=4}] math 4
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=5..}] math 5

scoreboard players operation @s[tag=ai] aiHasItem15 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne