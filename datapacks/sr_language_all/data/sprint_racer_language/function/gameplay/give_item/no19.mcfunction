give @s minecraft:blue_terracotta[item_model="sr/item/blinding_squid",custom_name='{"translate":"sr.item.squid","color":"light_purple","bold":true,"italic":false}',custom_data={no19:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1

#don't give people any more of these for 50 seconds.
scoreboard players set #squidCooldown value 1000

scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem19 += @s math
scoreboard players operation @s[tag=ai] aiHasGlobal += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne