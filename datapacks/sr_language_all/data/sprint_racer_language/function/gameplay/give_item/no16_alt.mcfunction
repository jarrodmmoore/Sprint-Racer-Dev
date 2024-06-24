#give more based on item luck

#also, can be given one of many different visual mines
scoreboard players set @s rNumber 0
#pick random number between 1 and 50, excluding banned values (tag=banChest)
scoreboard players operation @s rNumber = @e[sort=random,limit=1,type=armor_stand,tag=random,tag=!banChest,scores={rNumber=1..50}] rNumber

#chest
give @s[scores={rNumber=1..27,itemLuck=..3}] minecraft:trapped_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=1..27,itemLuck=4}] minecraft:trapped_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=1..27,itemLuck=5..}] minecraft:trapped_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3

#enchanting table
give @s[scores={rNumber=28..30,itemLuck=..3}] minecraft:enchanting_table[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=28..30,itemLuck=4}] minecraft:enchanting_table[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=28..30,itemLuck=5..}] minecraft:enchanting_table[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3

#capsule
give @s[scores={rNumber=31..37,itemLuck=..3}] minecraft:glass[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=31..37,itemLuck=4}] minecraft:glass[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=31..37,itemLuck=5..}] minecraft:glass[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3

#ender chest
give @s[scores={rNumber=38,itemLuck=..3}] minecraft:ender_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=38,itemLuck=4}] minecraft:ender_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=38,itemLuck=5..}] minecraft:ender_chest[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3

#red wool
give @s[scores={rNumber=39..41,itemLuck=..3}] minecraft:red_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=39..41,itemLuck=4}] minecraft:red_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=39..41,itemLuck=5..}] minecraft:red_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3

#yellow wool
give @s[scores={rNumber=42..44,itemLuck=..3}] minecraft:yellow_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=42..44,itemLuck=4}] minecraft:yellow_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=42..44,itemLuck=5..}] minecraft:yellow_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3

#blue wool
give @s[scores={rNumber=45..47,itemLuck=..3}] minecraft:light_blue_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=45..47,itemLuck=4}] minecraft:light_blue_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=45..47,itemLuck=5..}] minecraft:light_blue_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3

#lime wool
give @s[scores={rNumber=48..49,itemLuck=..3}] minecraft:lime_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=48..49,itemLuck=4}] minecraft:lime_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=48..49,itemLuck=5..}] minecraft:lime_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3

#purple wool
give @s[scores={rNumber=50,itemLuck=..3}] minecraft:magenta_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 1
give @s[scores={rNumber=50,itemLuck=4}] minecraft:magenta_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 2
give @s[scores={rNumber=50,itemLuck=5..}] minecraft:magenta_wool[custom_name='{"translate":"sr.item.trapped_chest","color":"green","bold":true,"italic":false}',custom_data={no16:1b,stay:1b,item:1b,normalitem:1b}] 3



scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,tag=justOne] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=..3}] math 1
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=4}] math 2
scoreboard players add @s[tag=ai,tag=!justOne,scores={itemLuck=5..}] math 3

scoreboard players operation @s[tag=ai] aiHasItem16 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math