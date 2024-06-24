give @s minecraft:elytra[custom_name='{"translate":"sr.item.elytra","color":"aqua","bold":true,"italic":false}',custom_data={no12:1b,stay:1b,item:1b,normalitem:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem12 += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne