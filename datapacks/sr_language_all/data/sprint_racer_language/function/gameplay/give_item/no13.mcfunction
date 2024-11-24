#give more based on item luck
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=..1}] minecraft:slime_block[custom_name='{"translate":"sr.item.slime_trap","color":"green","bold":true,"italic":false}',custom_data={no13:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 2
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=2}] minecraft:slime_block[custom_name='{"translate":"sr.item.slime_trap","color":"green","bold":true,"italic":false}',custom_data={no13:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 3
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=3}] minecraft:slime_block[custom_name='{"translate":"sr.item.slime_trap","color":"green","bold":true,"italic":false}',custom_data={no13:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 4
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=4}] minecraft:slime_block[custom_name='{"translate":"sr.item.slime_trap","color":"green","bold":true,"italic":false}',custom_data={no13:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 5
give @s[tag=!justOne,tag=!capsuleCollect,scores={itemLuck=5..}] minecraft:slime_block[custom_name='{"translate":"sr.item.slime_trap","color":"green","bold":true,"italic":false}',custom_data={no13:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 6

give @s[tag=justOne] minecraft:slime_block[custom_name='{"translate":"sr.item.slime_trap","color":"green","bold":true,"italic":false}',custom_data={no13:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 1
give @s[tag=capsuleCollect] minecraft:slime_block[custom_name='{"translate":"sr.item.slime_trap","color":"green","bold":true,"italic":false}',custom_data={no13:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}] 4


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=capsuleCollect] math 4
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=..1}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=2}] math 3
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=3}] math 4
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=4}] math 5
scoreboard players add @s[tag=ai,tag=!justOne,tag=!capsuleCollect,scores={itemLuck=5..}] math 6

scoreboard players operation @s[tag=ai] aiHasItem13 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne