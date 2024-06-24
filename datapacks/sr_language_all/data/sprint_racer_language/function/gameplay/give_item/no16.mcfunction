#give more based on item luck

#chest
give @s[tag=!justOne,scores={itemLuck=..3}] minecraft:trapped_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 1
give @s[tag=!justOne,scores={itemLuck=4}] minecraft:trapped_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 2
give @s[tag=!justOne,scores={itemLuck=5..}] minecraft:trapped_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 3

give @s[tag=justOne] minecraft:trapped_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 3

scoreboard players operation @s[tag=ai] aiHasItem16 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne